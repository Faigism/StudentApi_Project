namespace StudentApp.Service.Dtos.StudentDtos
{
    public class StudentGetAllItemDto
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public decimal Point { get; set; }
        public GroupInStudentGetAllDto Group { get; set; }
    }
    public class GroupInStudentGetAllDto
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int StudentsCount { get; set; }
    }
}
