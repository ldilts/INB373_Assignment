using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;

namespace Business
{
    [System.ComponentModel.DataObject]
    public class Class1
    {
        private static DataAccess.BikeWayDBTableAdapters.NetworksTableAdapter networksTableAdapter = new DataAccess.BikeWayDBTableAdapters.NetworksTableAdapter();
        private static DataAccess.BikeWayDBTableAdapters.UsersTableAdapter usersTableAdapter = new DataAccess.BikeWayDBTableAdapters.UsersTableAdapter();
        private static DataAccess.BikeWayDBTableAdapters.getSingleUserFavouriteStationsTableAdapter getSingleUserFavouriteStationsTableAdapter = new DataAccess.BikeWayDBTableAdapters.getSingleUserFavouriteStationsTableAdapter();

        // NETWORKS
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert)]
        public static void insertNetwork(long NetworkId, string Company, string Href, string City, string Country, double Longitude, double Latitude)
        {
            networksTableAdapter.Insert(NetworkId, Company, Href, City, Country, Longitude, Latitude);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update)]
        public static void updateNetwork(string Company, string Href, string City, string Country, double Longitude, double Latitude, long Original_NetworkId)
        {
            networksTableAdapter.Update(Company, Href, City, Country, Longitude, Latitude, Original_NetworkId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete)]
        public static void deleteNetwork(long Original_NetworkId)
        {
            networksTableAdapter.Delete(Original_NetworkId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static Data.BikeWayDB.NetworksDataTable getNetworks()
        {
            return networksTableAdapter.GetData();
        }

        // USERS
        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Insert)]
        public static void insertUser(string Name)
        {
            usersTableAdapter.Insert(Name);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Update)]
        public static void updateUser(string Name, long Original_UserId)
        {
            usersTableAdapter.Update(Name, Original_UserId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Delete)]
        public static void deleteUser(long Original_UserId)
        {
            usersTableAdapter.Delete(Original_UserId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, true)]
        public static Data.BikeWayDB.UsersDataTable getUsers(long UserId)
        {
            return usersTableAdapter.GetData(UserId);
        }

        [System.ComponentModel.DataObjectMethod(System.ComponentModel.DataObjectMethodType.Select, false)]
        public static Data.BikeWayDB.getSingleUserFavouriteStationsDataTable getSingleUserFavouriteStations(Guid UserId)
        {
            return getSingleUserFavouriteStationsTableAdapter.GetData(UserId);
        }
    }
}
