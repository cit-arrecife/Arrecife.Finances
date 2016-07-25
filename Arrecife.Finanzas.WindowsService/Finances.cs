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
    using Arrecife.Finances.WindowsService.Properties;
    using System.ServiceProcess;
    using System.Web.Http;
    using System.Web.Http.SelfHost;

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