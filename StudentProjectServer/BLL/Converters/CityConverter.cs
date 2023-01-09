using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DLL;
using DTO;
namespace BLL.Converters
{
    public class CityConverter
    {
        public static CityDTO ConvertToDto(City u)
        {
            CityDTO city = new CityDTO();
            city.CityID = u.CityID;
            city.CityName = u.CityName;
          
            return city;
        }
        public static List<CityDTO> ConvertToListDto(List<City> u)
        {
            List<CityDTO> city = new List<CityDTO>();
            u.ForEach(x =>
            {
                city.Add(ConvertToDto(x));
            });
            return city;
        }
        public static List<City> ConvertToListCity(List<CityDTO> u)
        {
            List<City> city = new List<City>();
            u.ForEach(x =>
            {
                city.Add(ConvertToCity(x));
            });
            return city;
        }
        //המרה לDB
        public static City ConvertToCity(CityDTO u)
        {
            City city = new City();
            city.CityID = u.CityID;
            city.CityName = u.CityName;
            return city;
        }
    }
}
