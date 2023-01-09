using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DLL;
using DTO;
namespace BLL.Converters
{
    public class StudentsConverter
    {
        public static StudentsDTO ConvertToDto(Students u)
        {
            StudentsDTO student = new StudentsDTO();
            student.Id = u.Id;
            student.FirstName = u.FirstName;
            student.LastName = u.LastName;
            student.DateOfBitrh = u.DateOfBitrh;
            student.IsraeliID = u.IsraeliID;
            student.CityID = u.CityID;
            if (u.City != null)
            {
                student.City = CityConverter.ConvertToDto(u.City);
            }
            return student;
        }
        public static List<StudentsDTO> ConvertToListDto(List<Students> u)
        {
            List<StudentsDTO> student = new List<StudentsDTO>();
            u.ForEach(x =>
            {
                student.Add(ConvertToDto(x));
            });
            return student;
        }
        public static List<Students> ConvertToListStudent(List<StudentsDTO> u)
        {
            List<Students> student = new List<Students>();
            u.ForEach(x =>
            {
                student.Add(ConvertToStudent(x));
            });
            return student;
        }
        //המרה לDB
        public static Students ConvertToStudent(StudentsDTO u)
        {
            Students student = new Students();
            student.Id = u.Id;
            student.FirstName = u.FirstName;
            student.LastName = u.LastName;
            student.DateOfBitrh = u.DateOfBitrh;
            student.IsraeliID = u.IsraeliID;
            student.CityID = u.CityID;
            return student;
        }
    }
}
