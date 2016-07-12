namespace Arrecife.Finances.WindowsService
{
    partial class ArrecifeFinancesInstaller
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de componentes

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.ArrecifeFinancesServiceProcessInstaller = new System.ServiceProcess.ServiceProcessInstaller();
            this.ArrecifeFinancesServiceInstaller = new System.ServiceProcess.ServiceInstaller();
            // 
            // ArrecifeFinancesServiceProcessInstaller
            // 
            this.ArrecifeFinancesServiceProcessInstaller.Account = System.ServiceProcess.ServiceAccount.LocalSystem;
            this.ArrecifeFinancesServiceProcessInstaller.Password = null;
            this.ArrecifeFinancesServiceProcessInstaller.Username = null;
            // 
            // ArrecifeFinancesServiceInstaller
            // 
            this.ArrecifeFinancesServiceInstaller.Description = "Servicio de caché para el uso de operaciones del proyecto de finanzas.";
            this.ArrecifeFinancesServiceInstaller.DisplayName = "Arrecife Finances";
            this.ArrecifeFinancesServiceInstaller.Installers.AddRange(new System.Configuration.Install.Installer[] {
            this.ArrecifeFinancesServiceProcessInstaller});
            this.ArrecifeFinancesServiceInstaller.ServiceName = "ArrecifeFinances";
            this.ArrecifeFinancesServiceInstaller.StartType = System.ServiceProcess.ServiceStartMode.Automatic;
            // 
            // ArrecifeFinancesInstaller
            // 
            this.Installers.AddRange(new System.Configuration.Install.Installer[] {
            this.ArrecifeFinancesServiceInstaller});

        }

        #endregion

        private System.ServiceProcess.ServiceProcessInstaller ArrecifeFinancesServiceProcessInstaller;
        private System.ServiceProcess.ServiceInstaller ArrecifeFinancesServiceInstaller;
    }
}