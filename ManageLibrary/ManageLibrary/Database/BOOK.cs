//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ManageLibrary.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class BOOK
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BOOK()
        {
            this.DETAIL_BORROW = new HashSet<DETAIL_BORROW>();
        }
    
        public System.Guid idBook { get; set; }
        public string nameBook { get; set; }
        public Nullable<int> yearRealeas { get; set; }
        public Nullable<System.Guid> idPublisher { get; set; }
        public Nullable<System.Guid> idAuthor { get; set; }
        public Nullable<System.Guid> idTypeOfBook { get; set; }
        public Nullable<int> numberBook { get; set; }
    
        public virtual AUTHOR AUTHOR { get; set; }
        public virtual PUBLISHER PUBLISHER { get; set; }
        public virtual TYPESOFBOOK TYPESOFBOOK { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DETAIL_BORROW> DETAIL_BORROW { get; set; }
    }
}
