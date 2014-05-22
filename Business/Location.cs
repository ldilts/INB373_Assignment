using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    class Location
    {
        public static void getNearbyStations(double latitude, double longitude)
        {
            double percentage = 0.0001;
            double percentage_long = percentage/2;

            double d_latitude = Math.Abs(latitude * percentage);
            double d_longitude = Math.Abs(longitude * percentage_long);
            double latitude_low = latitude - d_latitude;
            double latitude_high = latitude + d_latitude;
            double longitude_low = longitude - d_longitude;
            double longitude_high = longitude + d_longitude;

            Business.DataObjectMethods.selectClosestStations(latitude_low, latitude_high, longitude_low, longitude_high);

            /*
            string query_latitude = "Latitude BETWEEN " + latitude_low + " AND " + latitude_high;
            string query_longitude = "Longitude BETWEEN " + longitude_low + " AND " + longitude_high;
            string query = "SELECT * FROM Stations WHERE ( " + query_latitude + " ) AND ( " + query_longitude + " )";
         */   
        }
        /*
        public static List<StationModel> OrderNearbyStations(GeoCoordinate coordinate, List<StationBase> stationList)
        {
            List<StationModel> tempList = new List<StationModel>();
            foreach (StationBase station in stationList)
            {
                StationModel stationModel = StationModel.getStationModel(station);
                double distance = coordinate.GetDistanceTo(stationModel.GeoCoordinate);
                stationModel.distance = distance;
                tempList.Add(stationModel);
            }
            var nearbyList = tempList.OrderBy(x => x.distance).ToList();
            return nearbyList;
        }
         * */
    }
}
