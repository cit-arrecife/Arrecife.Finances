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
    using System.ComponentModel;

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