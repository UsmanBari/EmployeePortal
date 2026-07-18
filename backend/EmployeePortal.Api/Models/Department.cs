using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EmployeePortal.Api.Models
{
    public class Department
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; } = null!;

        public ICollection<Employee> Employees { get; set; } = new List<Employee>();
    }
}