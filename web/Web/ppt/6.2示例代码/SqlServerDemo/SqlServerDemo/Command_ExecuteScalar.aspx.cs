using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Command_ExecuteScalar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strCnn);
        SqlCommand cmd = new SqlCommand();//建立命令对象
        cmd.Connection = cnn;//设置命令对象的数据连接属性
        //把SQL语句赋给命令对象
        cmd.CommandText = "select count(*) from stuInfo";
        try
        {
            cnn.Open();//打开连接
            object count = cmd.ExecuteScalar();//执行SQL命令,返回Object类型的数据
            lblMsg.Text = "学生人数：" + count.ToString();
        }
        catch (Exception ex)
        {
            lblMsg.Text = "查询失败，错误原因：" + ex.Message;
        }
        finally
        {
            if (cnn.State == ConnectionState.Open)
                cnn.Close();
        }
    }
}
