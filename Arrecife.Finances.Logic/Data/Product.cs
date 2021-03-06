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
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.ReceiptProduct = new HashSet<ReceiptProduct>();
        }
    
        public int IdProduct { get; set; }
        public int Code { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; }
        public int Stock { get; set; }
        public int MinimalAmountStock { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public System.DateTime InputSystemDate { get; set; }
        public System.DateTime LastModificationDate { get; set; }
    
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReceiptProduct> ReceiptProduct { get; set; }
    }
}
