using Business;
using Data.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            //DataService.GetNetworkListFromFile();

            getNearbyStations(-27.471011, 153.023449);

            Console.ReadLine();


        }

        public static async void getNearbyStations(double latitude, double longitude)
        {

            double percentage = 0.0001;
            double percentage_long = percentage/2;

            double d_latitude = Math.Abs(latitude * percentage);
            double d_longitude = Math.Abs(longitude * percentage_long);

            double latitude_low = latitude - d_latitude;
            double latitude_high = latitude + d_latitude;

            double longitude_low = longitude - d_longitude;
            double longitude_high = longitude + d_longitude;


            string query_latitude = "Latitude BETWEEN " + latitude_low + " AND " + latitude_high;
            string query_longitude = "Longitude BETWEEN " + longitude_low + " AND " + longitude_high;

            string query = "SELECT * FROM Stations WHERE ( " + query_latitude + " ) AND ( " + query_longitude + " )";

            Debug.WriteLine(query);


        }
    }
}
