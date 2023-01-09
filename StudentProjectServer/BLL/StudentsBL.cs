using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DLL;
using DTO;
using BLL.Converters;
namespace BLL
{
    public class StudentsBL
    {
        public static List<StudentsDTO> GetAllStudents()
        {
            using (StudentsEntities db = new StudentsEntities())
            {

                var students = db.Students.Include("City").ToList();
                return StudentsConverter.ConvertToListDto(students);

            }
        }
        public static bool AddStudent(StudentsDTO student)
        {
            using (StudentsEntities db = new StudentsEntities())
            {
                var newStudent = StudentsConverter.ConvertToStudent(student);
                db.Students.Add(newStudent);
                db.SaveChanges();
                return true;

            }
        }

      

        public static bool UpdateStudent(StudentsDTO student)
        {
            using (StudentsEntities db = new StudentsEntities())
            {

                var updatedStudent = db.Students.FirstOrDefault(x => x.Id == student.Id);
                updatedStudent.FirstName = student.FirstName;
                updatedStudent.LastName = student.LastName;
                updatedStudent.DateOfBitrh = student.DateOfBitrh;
                updatedStudent.IsraeliID = student.IsraeliID;
                updatedStudent.CityID = student.CityID;

                db.SaveChanges();
                return true;

            }
        }
    }
}
