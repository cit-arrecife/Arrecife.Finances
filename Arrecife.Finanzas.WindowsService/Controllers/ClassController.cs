using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Arrecife.Finances.WindowsService.Controllers
{
    public class ClassController : ApiController
    {
        public HttpResponseMessage Get(short priority)
        {
            HttpStatusCode statusCode = HttpStatusCode.OK;
            return new HttpResponseMessage()
            {
                Content = new StringContent("cadena", Encoding.UTF8, "application/json"),
                StatusCode = statusCode
            };
        }

        [HttpPost]
        public HttpResponseMessage Post([FromBody] JToken list)
        {
            return null;
        }
    }
}