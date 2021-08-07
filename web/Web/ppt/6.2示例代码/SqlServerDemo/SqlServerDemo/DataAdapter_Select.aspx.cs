using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataAdapter_Select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //从web.config中读取连接字符串
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        //创建连接对象
        using (SqlConnection cnn = new SqlConnection(strCnn))
        {
            //创建DataAdapter对象，使用select语句和连接对象初始化
            SqlDataAdapter daStu = new SqlDataAdapter("select * from StuInfo", cnn);
            //创建DataSet对象
            DataSet dsStu = new DataSet();            
            try
            {
                //调用Fill方法，填充DataSet的数据表StuInfo
                daStu.Fill(dsStu, "StuInfo");
                //将StuInfo表绑定到GridView控件上显示
                GridView1.DataSource = dsStu.Tables["StuInfo"];
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
