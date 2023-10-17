using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Index : Page
    {
        protected void GoButton_Click(object sender, EventArgs e)
        {
            string city = CityDropDownList.SelectedValue;
            Session["City"] = city;
            Response.Redirect("Forecast.aspx");
        }
    }
}
