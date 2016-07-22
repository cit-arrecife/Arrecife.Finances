// ----------------------------------------------------------------------
// <copyright file="Arrecife.FinancesInstaller.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase ArrecifeFinancesInstaller.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.WindowsService
{
    using System;
    using System.Collections;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.Configuration.Install;
    using System.Linq;
    using System.Threading.Tasks;

    /// <summary>
    /// Instalador del servicio de windows.
    /// </summary>
    [RunInstaller(true)]
    public partial class ArrecifeFinancesInstaller : System.Configuration.Install.Installer
    {
        /// <summary>
        /// Constructor principal de la clase.
        /// </summary>
        public ArrecifeFinancesInstaller()
        {
            this.InitializeComponent();
        }
    }
}