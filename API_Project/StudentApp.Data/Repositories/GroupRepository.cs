using StudentApp.Core.Entities;
using StudentApp.Core.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Data.Repositories
{
    public class GroupRepository : Repository<Group>,IGroupRepository
    {
        public GroupRepository(StudentDbContext context) : base(context) { }
    }
}
