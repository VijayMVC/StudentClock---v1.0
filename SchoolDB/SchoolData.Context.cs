﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SchoolDataEntities : DbContext
    {
        public SchoolDataEntities()
            : base("name=SchoolDataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<EFAccount> EFAccounts { get; set; }
        public DbSet<EFClass> EFClasses { get; set; }
        public DbSet<EFClock> EFClocks { get; set; }
        public DbSet<EFCourse> EFCourses { get; set; }
        public DbSet<EFGrade> EFGrades { get; set; }
        public DbSet<EFInstructor> EFInstructors { get; set; }
        public DbSet<EFRegistration> EFRegistrations { get; set; }
        public DbSet<EFSchedule> EFSchedules { get; set; }
        public DbSet<EFState> EFStates { get; set; }
        public DbSet<EFStudent> EFStudents { get; set; }
        public DbSet<EFZipCode> EFZipCodes { get; set; }
    }
}
