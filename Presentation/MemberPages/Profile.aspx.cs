using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Presentation.MemberPages
{
    public partial class Profile : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Page_Init(object sender, EventArgs e) 
        {

            //ObjectDataSource1.InsertParameters["UserId"].DefaultValue = "c42fbcc9-4767-4a0c-8e45-5978e5f19209 ";
             
        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {
            e.InputParameters["UserId"] = (Guid)Membership.GetUser().ProviderUserKey;
        }
    }
}