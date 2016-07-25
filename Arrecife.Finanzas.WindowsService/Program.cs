// ----------------------------------------------------------------------
// <copyright file="Program.cs" company="Arrecife">
// Todos los derechos reservados.
// Autor: Jose Fabian Benavides Moreno
// Fecha: Julio 2016
// </copyright>
// <summary>Clase Program.</summary>
// ----------------------------------------------------------------------
namespace Arrecife.Finances.WindowsService
{
    using System.ServiceProcess;

    /// <summary>
    /// Clase principal de la aplicación.
    /// </summary>
    internal static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        private static void Main()
        {
            ServiceBase[] servicesToRun;
            servicesToRun = new ServiceBase[]
            {
                new Finances()
            };
            ServiceBase.Run(servicesToRun);
        }
    }
}