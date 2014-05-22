﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;

namespace Business
{
    [System.ComponentModel.DataObject]
    public class DataObjectMethods
    {
       

        private static DataAccess.n8925666TableAdapters.NetworksTableAdapter networksTableAdapter = new DataAccess.n8925666TableAdapters.NetworksTableAdapter();
        private static DataAccess.n8925666TableAdapters.StationsTableAdapter stationsTableAdapter = new DataAccess.n8925666TableAdapters.StationsTableAdapter();
        private static DataAccess.n8925666TableAdapters.FavouritesTableAdapter favouritesTableAdapter = new DataAccess.n8925666TableAdapters.FavouritesTableAdapter();
        private static DataAccess.n8925666TableAdapters.getStationsFromNetworkTableAdapter getStationsFromNetworkTableAdapter = new DataAccess.n8925666TableAdapters.getStationsFromNetworkTableAdapter();
        private static DataAccess.n8925666TableAdapters.getSingleUserFavouriteStationsTableAdapter getSingleUserFavouriteStationsTableAdapter = new DataAccess.n8925666TableAdapters.getSingleUserFavouriteStationsTableAdapter();
        private static DataAccess.n8925666TableAdapters.getStationsFromCityTableAdapter getStationsFromCityTableAdapter = new DataAccess.n8925666TableAdapters.getStationsFromCityTableAdapter();

        // NETWORKS
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static Data.n8925666.NetworksDataTable selectNetworks()
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
        public Data.n8925666.StationsDataTable  selectStations()
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
        
        // FAVOURITES
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.n8925666.FavouritesDataTable selectUserFavourites(Guid UserId)
        {
            return favouritesTableAdapter.GetData(UserId);
        }
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert)]
        public static void insertFavourite(Guid UserId, string StationID, DateTime DateFavourited)
        {
            favouritesTableAdapter.Insert(UserId, StationID, DateFavourited);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update)]
        public static void updateFavourite(DateTime DateFavourited, Guid Original_UserId, string Original_StationID)
        {
            favouritesTableAdapter.Update(DateFavourited, Original_UserId, Original_StationID);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete)]
        public static void deleteFavourite(Guid Original_UserId, string Original_StationID)
        {
            favouritesTableAdapter.Delete(Original_UserId, Original_StationID);
        }


        // Get Stations From Network
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.n8925666.getStationsFromNetworkDataTable getStationsFromNetwork(string NetworkId)
        {
            return getStationsFromNetworkTableAdapter.GetData(NetworkId);
        }

        // Get User Favourite Stations
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.n8925666.getSingleUserFavouriteStationsDataTable getSingleUserFavouriteStations(Guid UserId)
        {
            return getSingleUserFavouriteStationsTableAdapter.GetData(UserId);
        }

        // Get Stations From City
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.n8925666.getStationsFromCityDataTable getStationsFromCity(string City)
        {
            return getStationsFromCityTableAdapter.GetData(City);
        }

    }
}
