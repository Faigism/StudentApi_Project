using AutoMapper;
using StudentApp.Core.Entities;
using StudentApp.Service.Dtos.GroupDtos;
using StudentApp.Service.Dtos.StudentDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Profiles
{
    public class MappingProfile:Profile
    {
        public MappingProfile()
        {
            CreateMap<GroupCreateDto, Group>();
            CreateMap<Group, GroupGetDto>();
            CreateMap<Group, GroupInStudentGetDto>();
            CreateMap<Group, GroupGetAllItemDto>();
            CreateMap<Group, GroupInStudentGetAllDto>();

            CreateMap<StudentCreateDto, Student>();
            CreateMap<Student, StudentGetDto>();
            CreateMap<Student, StudentGetAllItemDto>();
        }
    }
}
