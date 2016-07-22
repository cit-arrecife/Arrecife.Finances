// ----------------------------------------------------------------------
// <copyright file="ClassController.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase ClassController.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.WindowsService.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Net.Http;
    using System.Text;
    using System.Threading.Tasks;
    using System.Web.Http;
    using Newtonsoft.Json.Linq;

    /// <summary>
    /// Servicio REST para su respectivo consumo.
    /// </summary>
    public class ClassController : ApiController
    {
        /// <summary>
        /// Pendiente por hacer toda la implementacion de la logica.
        /// </summary>
        /// <param name="priority">Numero de tipo short.</param>
        /// <returns>Respuesta al consumo del servicio.</returns>
        public HttpResponseMessage Get(short priority)
        {
            HttpStatusCode statusCode = HttpStatusCode.OK;
            return new HttpResponseMessage()
            {
                Content = new StringContent("cadena", Encoding.UTF8, "application/json"),
                StatusCode = statusCode
            };
        }

        /// <summary>
        /// Pendiente por hacer toda la implementacion de la logica.
        /// </summary>
        /// <param name="list">JSON de una lista.</param>
        /// <returns>Respuesta al consumo del servicio.</returns>
        [HttpPost]
        public HttpResponseMessage Post([FromBody] JToken list)
        {
            return null;
        }
    }
}