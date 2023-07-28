using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StudentApp.Service.Dtos.StudentDtos;
using StudentApp.Core.Entities;
using StudentApp.Core.Repositories;
using StudentApp.Data;
using StudentApp.Service.Implementations;
using StudentApp.Service.Interfaces;
using Microsoft.AspNetCore.Authorization;

namespace StudentApp.Api.Controllers
{
    [Authorize(Roles = "Admin")]
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : ControllerBase
    {
        private readonly IStudentService _studentService;

        public StudentsController(IStudentService studentService)
        {
            _studentService = studentService;
        }
        /// <summary>
        /// Create a new student
        /// </summary>
        /// <remarks>
        /// Sample request:
        ///     
        ///     POST api/groups
        ///     {
        ///         "FullName": "Faiq Ismayilov",
        ///         "Point": "50.00",
        ///         "GroupId": 5
        ///     }
        /// </remarks>
        /// <param name="postDto"></param>
        /// <returns></returns>
        /// <response code="201">The student has been successfully created</response>
        /// <response code="400">The request contains invalid data or the data does not follow a specific rule.</response>
        /// <response code="404">The requested source or destination was not found.</response>
        [HttpPost("")]
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(404)]
        public IActionResult Create(StudentCreateDto postDto)
        {
            return StatusCode(201, _studentService.Create(postDto));
        }
        /// <summary>
        /// Edit your Student
        /// </summary>
        /// <param name="id"></param>
        /// <param name="editDto"></param>
        /// <returns></returns>
        /// <response code="204">The Student has updated successfuly</response>
        /// <response code="400">The request contains invalid data or the data does not follow a specific rule.</response>
        /// <response code="404">Student not found by id</response>
        [HttpPut("{id}")]
        [ProducesResponseType(204)]
        [ProducesResponseType(400)]
        [ProducesResponseType(404)]
        public IActionResult Edit(int id, StudentEditDto editDto)
        {
            _studentService.Edit(id, editDto);
            return NoContent();
        }
        /// <summary>
        /// Get a student by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <response code="200">The process was successful</response>
        /// <response code="404">Student not found by Id</response>
        [HttpGet("{id}")]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        public ActionResult<StudentGetDto> Get(int id)
        {
            return Ok(_studentService.GetById(id));
        }
        /// <summary>
        /// Show all students
        /// </summary>
        /// <returns></returns>
        /// <response code="200">The process was successful</response>
        /// <response code="404">Error has occurred</response>
        [HttpGet("all")]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        public ActionResult<List<StudentGetAllItemDto>> GetAll()
        {
            return Ok(_studentService.GetAll());
        }
        /// <summary>
        /// Delete a student by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <response code="204">The process was successful</response>
        /// <response code="404">Student not found by Id</response>
        [HttpDelete("{id}")]
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        public IActionResult Delete(int id)
        {
            _studentService.Delete(id);
            return NoContent();
        }
    }
}
