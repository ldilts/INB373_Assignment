using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication
{
    class Program
    {
        static void Main(string[] args)
        {
            DataService.GetNetworkListFromFile();
            //DataService.GetNetworkList();
            //while (DataService.ready == false) ;
            
            Console.Read();
            
        }
    }
}
