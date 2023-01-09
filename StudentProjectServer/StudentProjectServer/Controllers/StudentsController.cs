using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BLL;
using DTO;
namespace StudentProjectServer.Controllers
{
    [RoutePrefix("api/Students")]
    public class StudentsController : ApiController
    {
        [HttpGet]
        [Route("GetStudents")]
        public IHttpActionResult GetStudents()
        {
            return Ok(StudentsBL.GetAllStudents());
        }

        [HttpPost]
        [Route("AddStudent")]
        public IHttpActionResult AddStudent(StudentsDTO newStudent)
        {
            return Ok(StudentsBL.AddStudent(newStudent));
        }

      
    }
}
