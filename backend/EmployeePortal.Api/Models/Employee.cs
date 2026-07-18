using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EmployeePortal.Api.Models
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; } = null!;

        [Required]
        [EmailAddress]
        public string Email { get; set; } = null!;

        [Column(TypeName = "decimal(18,2)")]
        public decimal Salary { get; set; }

        [ForeignKey("Department")]
        public int DeptId { get; set; }

        public Department? Department { get; set; }
    }
}