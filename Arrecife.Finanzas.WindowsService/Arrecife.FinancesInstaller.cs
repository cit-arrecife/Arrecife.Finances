using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration.Install;
using System.Linq;
using System.Threading.Tasks;

namespace Arrecife.Finances.WindowsService
{
    [RunInstaller(true)]
    public partial class ArrecifeFinancesInstaller : System.Configuration.Install.Installer
    {
        public ArrecifeFinancesInstaller()
        {
            InitializeComponent();
        }
    }
}