//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SchoolDB
{
    using System;
    using System.Collections.Generic;
    
    public partial class EFGrade
    {
        public int AssignmentID { get; set; }
        public Nullable<int> ClassID { get; set; }
        public Nullable<int> StudentID { get; set; }
        public Nullable<double> Grade1 { get; set; }
        public string Type { get; set; }
    
        public virtual EFStudent Student { get; set; }
    }
}
