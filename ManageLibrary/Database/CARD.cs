
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
    
public partial class CARD
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public CARD()
    {

        this.BORROWs = new HashSet<BORROW>();

    }


    public System.Guid idCard { get; set; }

    public Nullable<System.DateTime> realeassDate { get; set; }

    public Nullable<System.Guid> idReader { get; set; }

    public Nullable<System.DateTime> expiryDate { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<BORROW> BORROWs { get; set; }

    public virtual READER READER { get; set; }

}

}
