using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using FinalProject_COMP2007_ExpenseTracker.Models;

namespace FinalProject_COMP2007_ExpenseTracker.cost_tracking
{
    public partial class Default : System.Web.UI.Page
    {
		protected FinalProject_COMP2007_ExpenseTracker.Models.Assignment2Entities _db = new FinalProject_COMP2007_ExpenseTracker.Models.Assignment2Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                //Display correct information only if user is logged in
                InformationShow.Visible = true;
                InformationHide.Visible = false;
            }

            else
            {
                //Not logged in
                InformationShow.Visible = false;
                InformationHide.Visible = true;
            }
            
        }

        // Model binding method to get List of cost_tracking entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking> GetData()
        {
            return _db.cost_tracking;
        }
    }
}

