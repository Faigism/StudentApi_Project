using StudentApp.Service.Dtos.Common;
using StudentApp.Service.Dtos.StudentDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Interfaces
{
    public interface IStudentService
    {
        CreatedResultDto Create(StudentCreateDto createDto);
        void Edit(int id, StudentEditDto editDto);
        StudentGetDto GetById(int id);
        List<StudentGetAllItemDto> GetAll();
        void Delete(int id);

    }
}
