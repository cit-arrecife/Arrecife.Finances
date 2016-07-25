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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Product = new HashSet<Product>();
            this.Receipt = new HashSet<Receipt>();
        }
    
        public int IdUser { get; set; }
        public int IdPerson { get; set; }
        public string Nick { get; set; }
        public string Pass { get; set; }
        public System.DateTime InputSystemDate { get; set; }
        public System.DateTime LastModificationDate { get; set; }
        public int IdSecretQuestion { get; set; }
        public string AnswerQuestion { get; set; }
        public int Permission { get; set; }
        public System.DateTime Licence { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual SecretQuestion SecretQuestion { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Product { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Receipt> Receipt { get; set; }
    }
}