using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using Data.Model;

namespace Business
{
    [System.ComponentModel.DataObject]
    public class DataObjectMethods
    {
        private static DataAccess.BikeWayDBTableAdapters.NetworksTableAdapter networksTableAdapter = new DataAccess.BikeWayDBTableAdapters.NetworksTableAdapter();
        private static DataAccess.BikeWayDBTableAdapters.StationsTableAdapter stationsTableAdapter = new DataAccess.BikeWayDBTableAdapters.StationsTableAdapter();
        private static DataAccess.BikeWayDBTableAdapters.getStationsFromNetworkTableAdapter getStationsFromNetworkTableAdapter = new DataAccess.BikeWayDBTableAdapters.getStationsFromNetworkTableAdapter();
        private static DataAccess.BikeWayDBTableAdapters.getSingleUserFavouriteStationsTableAdapter getSingleUserFavouriteStationsTableAdapter = new DataAccess.BikeWayDBTableAdapters.getSingleUserFavouriteStationsTableAdapter();

        // NETWORKS
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static Data.BikeWayDB.NetworksDataTable selectNetworks()
        {
            return networksTableAdapter.GetData();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert)]
        public static void insertNetwork(string NetworkId, string Company, string Href, double Latitude, double Longitude, string City, string Country)
        {
            networksTableAdapter.Insert(NetworkId, Company, Href, Latitude, Longitude, City, Country);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update)]
        public static void updateNetwork(string Company, string Href, double Latitude, double Longitude, string City, string Country, string Original_NetworkId)
        {
            networksTableAdapter.Update(Company, Href, Latitude, Longitude, City, Country, Original_NetworkId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete)]
        public static void deleteNetwork(string Original_NetworkId)
        {
            networksTableAdapter.Delete(Original_NetworkId);
        }

        // STATIONS
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public Data.BikeWayDB.StationsDataTable  selectStations()
        {
            return stationsTableAdapter.GetData();
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert)]
        public static void insertStation(string StationId, string Name, double Latitude, double Longitude, int FreeBikes, int Slots, DateTime StationTimeStamp, string NetworkId)
        {
            stationsTableAdapter.Insert(StationId, Name, Latitude, Longitude, FreeBikes, Slots, StationTimeStamp, NetworkId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update)]
        public static void updateStation(string Name, double Latitude, double Longitude, int FreeBikes, int Slots, DateTime StationTimeStamp, string NetworkId, string Original_StationId)
        {
            stationsTableAdapter.Update(Name, Latitude, Longitude, FreeBikes, Slots, StationTimeStamp, NetworkId, Original_StationId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete)]
        public static void deleteStation(string Original_StationId)
        {
            stationsTableAdapter.Delete(Original_StationId);
        }

        // Get Stations From Network
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.BikeWayDB.getStationsFromNetworkDataTable getStationsFromNetwork(string NetworkId)
        {
            return getStationsFromNetworkTableAdapter.GetData(NetworkId);
        }

        // Get User Favourite Stations
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.BikeWayDB.getSingleUserFavouriteStationsDataTable getSingleUserFavouriteStations(Guid UserId)
        {
            return getSingleUserFavouriteStationsTableAdapter.GetData(UserId);
        }
    }
}
