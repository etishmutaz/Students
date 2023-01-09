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
    public class CityBL
    {
        public static List<CityDTO> GetAllCity()
        {
            using (StudentsEntities db = new StudentsEntities())
            {

                var students = db.City.ToList();
                return CityConverter.ConvertToListDto(students);

            }
        }
    }
}
