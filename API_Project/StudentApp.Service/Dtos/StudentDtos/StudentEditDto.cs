using FluentValidation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentApp.Service.Dtos.StudentDtos
{
    public class StudentEditDto
    {
        public int GroupId { get; set; }
        public decimal Point { get; set; }

        private string fullName;
        public string FullName
        {
            get => fullName;
            set => fullName = TransformFullName(value);
        }
        private string TransformFullName(string fullName)
        {
            if (string.IsNullOrEmpty(fullName))
                return fullName;

            var words = fullName.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

            if (words.Length > 3)
                throw new ValidationException("Full Name should contain at most 3 words.");

            for (int i = 0; i < words.Length; i++)
            {
                if (HasDigits(words[i]))
                {
                    throw new ValidationException("Full Name should contain only letters.");
                }
                words[i] = char.ToUpper(words[i][0]) + words[i].Substring(1).ToLower();
            }

            return string.Join(" ", words);
        }
        private bool HasDigits(string word)
        {
            foreach (char c in word)
            {
                if (char.IsDigit(c))
                    return true;
            }
            return false;
        }
    }
    public class StudentEditDtoValidator : AbstractValidator<StudentEditDto>
    {
        public StudentEditDtoValidator()
        {
            RuleFor(x => x.FullName)
                .NotEmpty().MaximumLength(50).MinimumLength(2);
            RuleFor(x => x.Point)
                .InclusiveBetween(0, 100).ScalePrecision(2, 5);
            RuleFor(x => x.GroupId)
                .GreaterThan(0);
        }
    }
}
