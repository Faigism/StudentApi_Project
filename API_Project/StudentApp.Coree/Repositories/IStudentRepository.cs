using StudentApp.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Core.Repositories
{
    public interface IStudentRepository:IRepository<Student>
    {
    }
}
