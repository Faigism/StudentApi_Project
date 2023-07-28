using FluentValidation;
using System.ComponentModel.DataAnnotations;

namespace StudentApp.Service.Dtos.GroupDtos
{
    public class GroupEditDto
    {
        private string name;
        [Required]
        public string Name
        {
            get => name;
            set
            {
                if (!string.IsNullOrEmpty(value))
                    name = value.ToUpper();
                else
                    name = value;
            }
        }
    }
    public class GroupEditDtoValidator : AbstractValidator<GroupEditDto>
    {
        public GroupEditDtoValidator()
        {
            RuleFor(x => x.Name)
                .NotEmpty().Length(4, 5)
                .Must(ValidGroupName).WithMessage("Group Name should start with 2 or 1 letters and end with 3 digits. For Example: 'A111' or AA111");
        }
        private bool ValidGroupName(string name)
        {
            if (name.Length != 4 && name.Length != 5)
                return false;

            string letters = name.Substring(0, name.Length - 3);
            string digits = name.Substring(name.Length - 3);

            return (letters.Length == 1 || letters.Length == 2) && letters.All(char.IsLetter) && digits.All(char.IsDigit);
        }
    }
}
