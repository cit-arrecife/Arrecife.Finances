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

namespace Arrecife.Finances.WindowsService
{
    public partial class Finances : ServiceBase
    {
        public Finances()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            /// start the self host to make a rest service
            HttpSelfHostConfiguration config = new HttpSelfHostConfiguration(Settings.Default.RestServiceUrl);
            config.Routes.MapHttpRoute("default", "{controller}/{id}", new { id = RouteParameter.Optional });
            HttpSelfHostServer server = new HttpSelfHostServer(config);
            server.OpenAsync().Wait();
        }

        protected override void OnStop()
        {
        }
    }
}