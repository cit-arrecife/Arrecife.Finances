//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Arrecife.Finances.Logic.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Payment
    {
        public int IdPayment { get; set; }
        public int IdReceipt { get; set; }
        public decimal PaymentValue { get; set; }
        public string Notes { get; set; }
        public System.DateTime InputSystemDate { get; set; }
        public int UserId { get; set; }
    
        public virtual Receipt Receipt { get; set; }
    }
}