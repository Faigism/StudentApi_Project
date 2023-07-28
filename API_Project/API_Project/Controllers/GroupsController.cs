using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using StudentApp.Service.Dtos.GroupDtos;
using StudentApp.Core.Entities;
using StudentApp.Core.Repositories;
using StudentApp.Data;
using StudentApp.Service.Interfaces;
using StudentApp.Service.Exceptions;
using Microsoft.AspNetCore.Authorization;
using System.Data;

namespace StudentApp.Api.Controllers
{
    [Authorize(Roles ="Admin")]
    [Route("api/[controller]")]
    [ApiController]
    public class GroupsController : ControllerBase
    {
        private readonly IGroupService _groupService;

        public GroupsController(IGroupService groupService)
        {
            _groupService = groupService;
        }
        /// <summary>
        /// Create a new group
        /// </summary>
        /// <remarks>
        /// Sample request:
        ///     
        ///     POST api/groups
        ///     {
        ///         "Name": "A111 or AA111 must be in this format"
        ///     }
        /// </remarks>
        /// <param name="postDto"></param>
        /// <returns></returns>
        /// <response code="201">The group has been successfully created</response>
        /// <response code="400">The request contains invalid data or the data does not follow a specific rule.</response>
        /// <response code="404">The requested source or destination was not found.</response>
        [HttpPost("")]
        [ProducesResponseType(201)]
        [ProducesResponseType(400)]
        [ProducesResponseType(404)]
        public IActionResult Create(GroupCreateDto postDto)
        {
            var result = _groupService.Create(postDto);
            return StatusCode(201, result);

        }
        /// <summary>
        /// Edit your group
        /// </summary>
        /// <param name="id"></param>
        /// <param name="putDto"></param>
        /// <returns></returns>
        /// <response code="204">The Group has updated successfuly</response>
        /// <response code="400">The request contains invalid data or the data does not follow a specific rule.</response>
        /// <response code="404">Group not found by id</response>
        [HttpPut("{id}")]
        [ProducesResponseType(204)]
        [ProducesResponseType(400)]
        [ProducesResponseType(404)]
        public IActionResult Edit(int id, GroupEditDto putDto)
        {
            _groupService.Edit(id, putDto);
            return NoContent();
        }
        /// <summary>
        /// Get a group by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <response code="200">The process was successful</response>
        /// <response code="404">Group not found by Id</response>
        [HttpGet("{id}")]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        public ActionResult<GroupGetDto> Get(int id)
        {
            return Ok(_groupService.GetById(id));
        }
        /// <summary>
        /// Show all groups
        /// </summary>
        /// <returns></returns>
        /// <response code="200">The process was successful</response>
        /// <response code="404">Error has occurred</response>
        [HttpGet("all")]
        [ProducesResponseType(200)]
        [ProducesResponseType(404)]
        public ActionResult<List<GroupGetAllItemDto>> GetAll()
        {
            return Ok(_groupService.GetAll());
        }
        /// <summary>
        /// Delete a group by Id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <response code="204">The process was successful</response>
        /// <response code="404">Group not found by Id</response>
        [HttpDelete("{id}")]
        [ProducesResponseType(204)]
        [ProducesResponseType(404)]
        public IActionResult Delete(int id)
        {
            _groupService.Remove(id);
            return NoContent();
        }
    }
}
