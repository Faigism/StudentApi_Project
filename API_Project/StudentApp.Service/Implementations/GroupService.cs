using AutoMapper;
using StudentApp.Core.Entities;
using StudentApp.Core.Repositories;
using StudentApp.Service.Dtos.Common;
using StudentApp.Service.Dtos.GroupDtos;
using StudentApp.Service.Exceptions;
using StudentApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Implementations
{
    public class GroupService : IGroupService
    {
        private readonly IGroupRepository _groupRepository;
        private readonly IMapper _mapper;

        public GroupService(IGroupRepository groupRepository,IMapper mapper)
        {
            _groupRepository = groupRepository;
            _mapper = mapper;
        }
        public CreatedResultDto Create(GroupCreateDto createDto)
        {
            if (_groupRepository.IsExist(x => x.Name == createDto.Name))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Group Name already exists");
            var entity = _mapper.Map<Group>(createDto);
            _groupRepository.Add(entity);
            _groupRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }

        public void Edit(int id, GroupEditDto editDto)
        {
            var entity = _groupRepository.Get(x => x.Id == id);
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Group not found by id: {id}");
            if (entity.Name != editDto.Name && _groupRepository.IsExist(x => x.Name == editDto.Name))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "Name", "Group Name already exists");
            entity.Name = editDto.Name;
            _groupRepository.Commit();
        }

        public List<GroupGetAllItemDto> GetAll()
        {
            var entities = _groupRepository.GetQueryable(x => true, "Students").ToList();
            return _mapper.Map<List<GroupGetAllItemDto>>(entities);
        }

        public GroupGetDto GetById(int id)
        {
            var entity = _groupRepository.Get(x => x.Id == id, "Students");
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Group not found by id: {id}");
            return _mapper.Map<GroupGetDto>(entity);
        }

        public void Remove(int id)
        {
            var entity = _groupRepository.Get(x => x.Id == id, "Students");
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Group not found by id: {id}");
            _groupRepository.Delete(entity);
            _groupRepository.Commit();
        }
    }
}
