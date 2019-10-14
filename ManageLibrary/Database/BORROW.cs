
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
    
public partial class BORROW
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public BORROW()
    {

        this.DETAIL_BORROW = new HashSet<DETAIL_BORROW>();

        this.PAYs = new HashSet<PAY>();

    }


    public System.Guid idBorrow { get; set; }

    public System.Guid idCard { get; set; }

    public Nullable<decimal> moneyDesposit { get; set; }

    public Nullable<int> numberBorrow { get; set; }

    public Nullable<System.DateTime> borrowDate { get; set; }

    public Nullable<System.DateTime> announcePayDate { get; set; }



    public virtual CARD CARD { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<DETAIL_BORROW> DETAIL_BORROW { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<PAY> PAYs { get; set; }

}

}
