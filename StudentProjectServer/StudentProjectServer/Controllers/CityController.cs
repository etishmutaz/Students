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
    [RoutePrefix("api/city")]
    public class CityController : ApiController
    {
        [HttpGet]
        [Route("GetCity")]
        public IHttpActionResult GetCity()
        {
            return Ok(CityBL.GetAllCity());
        }

    


    }
}
