using DevExpress.DashboardWeb;
using DevExpress.DataAccess.ConnectionParameters;
using System;

namespace WebViewer_CustomizeCSS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxDashboardViewer1_ConfigureDataConnection(object sender, ConfigureDataConnectionWebEventArgs e)
        {
            if (e.DataSourceName == "SQL Data Source 1")
            {
                Access97ConnectionParameters parameters = (Access97ConnectionParameters)e.ConnectionParameters;
                string databasePath = Server.MapPath("App_Data/nwind.mdb");
                parameters.FileName = databasePath;
            }
        }
    }
}