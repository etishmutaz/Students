using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class StudentsDTO
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public System.DateTime DateOfBitrh { get; set; }
        public decimal IsraeliID { get; set; }
        public int CityID { get; set; }
        public  CityDTO City { get; set; }
    }
}
