
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
    
public partial class AUTHOR
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public AUTHOR()
    {

        this.BOOKS = new HashSet<BOOK>();

    }


    public System.Guid idAuthor { get; set; }

    public string nameAuthor { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<BOOK> BOOKS { get; set; }

}

}
