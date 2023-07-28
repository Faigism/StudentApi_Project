using AutoMapper;
using StudentApp.Core.Entities;
using StudentApp.Core.Repositories;
using StudentApp.Service.Dtos.Common;
using StudentApp.Service.Dtos.StudentDtos;
using StudentApp.Service.Exceptions;
using StudentApp.Service.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Implementations
{
    public class StudentService : IStudentService
    {
        private readonly IGroupRepository _groupRepository;
        private readonly IStudentRepository _studentRepository;
        private readonly IMapper _mapper;

        public StudentService(IGroupRepository groupRepository,IStudentRepository studentRepository,IMapper mapper)
        {
            _groupRepository = groupRepository;
            _studentRepository = studentRepository;
            _mapper = mapper;
        }
        public CreatedResultDto Create(StudentCreateDto createDto)
        {
            if (!_groupRepository.IsExist(x => x.Id == createDto.GroupId))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "GroupId", $"Group not found by id: {createDto.GroupId}");
            if (_studentRepository.IsExist(x => x.FullName == createDto.FullName))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "FullName", $"FullName already taken");
            var entity = _mapper.Map<Student>(createDto);
            _studentRepository.Add(entity);
            _studentRepository.Commit();

            return new CreatedResultDto { Id = entity.Id };
        }
        public void Edit(int id, StudentEditDto editDto)
        {
            var entity = _studentRepository.Get(x => x.Id == id);
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Student not found by id: {id}");
            if (entity.GroupId != editDto.GroupId && !_groupRepository.IsExist(x => x.Id == editDto.GroupId))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "GroupId", "GroupId not found");
            if (entity.FullName != editDto.FullName && _studentRepository.IsExist(x => x.FullName == editDto.FullName))
                throw new RestException(System.Net.HttpStatusCode.BadRequest, "FullName", "FullName already exists");
            entity.FullName = editDto.FullName;
            entity.Point = editDto.Point;
            entity.GroupId = editDto.GroupId;
            entity.CreatedAt = DateTime.UtcNow.AddHours(4);
            entity.ModifiedAt = DateTime.UtcNow.AddHours(4);

            _studentRepository.Commit();
        }

        public List<StudentGetAllItemDto> GetAll()
        {
            var entities = _studentRepository.GetQueryable(x => true, "Group").ToList();

            return _mapper.Map<List<StudentGetAllItemDto>>(entities);
        }

        public StudentGetDto GetById(int id)
        {
            var entity = _studentRepository.Get(x => x.Id == id, "Group");
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Student not found by id:{id}");
            return _mapper.Map<StudentGetDto>(entity);
        }
        public void Delete(int id)
        {
            var entity = _studentRepository.Get(x => x.Id == id);
            if (entity == null)
                throw new RestException(System.Net.HttpStatusCode.NotFound, $"Student not found by id: {id}");
            _studentRepository.Delete(entity);
            _studentRepository.Commit();
        }
    }
}
