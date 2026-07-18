using Microsoft.EntityFrameworkCore;
using EmployeePortal.Api.Models;

namespace EmployeePortal.Api.Data
{
    public class EmployeeDbContext : DbContext
    {
        public EmployeeDbContext(DbContextOptions<EmployeeDbContext> options) : base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; } = null!;
        public DbSet<Department> Departments { get; set; } = null!;

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Department>(entity =>
            {
                entity.ToTable("Departments");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Name).IsRequired();
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.ToTable("Employees");
                entity.HasKey(e => e.Id);
                entity.Property(e => e.Name).IsRequired();
                entity.Property(e => e.Email).IsRequired();
                entity.Property(e => e.Salary).HasColumnType("decimal(18,2)");
                entity.HasOne(d => d.Department)
                      .WithMany(p => p.Employees)
                      .HasForeignKey(d => d.DeptId)
                      .HasConstraintName("FK_Employees_Departments");
            });

            base.OnModelCreating(modelBuilder);
        }
    }
}
