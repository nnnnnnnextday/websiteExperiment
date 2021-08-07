using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcnn=WebConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strcnn);
        cnn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Select * from StuInfo";
        cmd.Connection = cnn;
        cnn.Close();
    }
}
