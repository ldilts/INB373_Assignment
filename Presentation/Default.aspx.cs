using Business;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            searchButton.Click += new EventHandler(this.searchButton_Click);


            DataService.GetNetworkListFromFile();

           
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {
            e.InputParameters["cityName"] = cityInput.Text;
            
        }
    }
}