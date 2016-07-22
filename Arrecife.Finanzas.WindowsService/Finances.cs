// ----------------------------------------------------------------------
// <copyright file="Finances.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase Finances.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.WindowsService
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Data;
    using System.Diagnostics;
    using System.Linq;
    using System.ServiceProcess;
    using System.Text;
    using System.Threading.Tasks;
    using System.Web.Http;
    using System.Web.Http.SelfHost;
    using Arrecife.Finances.WindowsService.Properties;

    /// <summary>
    /// Servicio de windows para el uso de la logica y servicio REST.
    /// </summary>
    public partial class Finances : ServiceBase
    {
        /// <summary>
        /// Constructor principal de la clase.
        /// </summary>
        public Finances()
        {
            this.InitializeComponent();
        }

        /// <summary>
        /// Metodo que se ejecuta cuando el servicio de windows se inicia.
        /// </summary>
        /// <param name="args">Array de strings.</param>
        protected override void OnStart(string[] args)
        {
            // start the self host to make a rest service
            HttpSelfHostConfiguration config = new HttpSelfHostConfiguration(Settings.Default.RestServiceUrl);
            config.Routes.MapHttpRoute("default", "{controller}/{id}", new { id = RouteParameter.Optional });
            HttpSelfHostServer server = new HttpSelfHostServer(config);
            server.OpenAsync().Wait();
        }

        /// <summary>
        /// Metodo que se ejecuta cuando el servicio de windows se para.
        /// </summary>
        protected override void OnStop()
        {
        }
    }
}