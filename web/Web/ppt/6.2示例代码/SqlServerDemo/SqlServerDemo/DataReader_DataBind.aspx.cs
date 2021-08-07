using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataReader_DataBind : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strCnn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "select * from Major";
        SqlDataReader MajorReader = null;
        try
        {
            if (cnn.State == ConnectionState.Closed)
                cnn.Open();
            MajorReader = cmd.ExecuteReader();
            DropDownList1.DataSource = MajorReader;//设置DropDownList1的数据源
            DropDownList1.DataTextField = "MajorName";//设置显示的数据字段
            DropDownList1.DataValueField = "MajorId";//设置隐藏的值字段
            DropDownList1.DataBind();//数据绑定  
        }
        catch (Exception ex)
        {
            Response.Write("用户添加失败，错误原因：" + ex.Message);
        }
        finally
        {
            //关闭DataReader对象
            if (MajorReader.IsClosed == false)
                MajorReader.Close();
            if (cnn.State == ConnectionState.Open)
                cnn.Close();
        }

    }
}
