using StudentApp.Service.Dtos.Common;
using StudentApp.Service.Dtos.GroupDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Interfaces
{
    public interface IGroupService
    {
        CreatedResultDto Create(GroupCreateDto createDto);
        void Edit(int id, GroupEditDto editDto);
        GroupGetDto GetById(int id);
        List<GroupGetAllItemDto> GetAll();
        void Remove(int id);
    }
}
