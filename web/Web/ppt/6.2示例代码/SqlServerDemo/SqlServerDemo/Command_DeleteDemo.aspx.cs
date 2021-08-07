using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Command_DeleteDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strCnn);
        SqlCommand cmd = new SqlCommand();//建立命令对象
        cmd.Connection = cnn;//设置命令对象的数据连接属性
        //把SQL语句赋给命令对象
        cmd.CommandText = "delete UserInfo  where UserId='" + txtName.Text.Trim() + "'";
        try
        {
            cnn.Open();//打开连接
            int deleteCount = cmd.ExecuteNonQuery();//执行SQL命令
            if (deleteCount == 1)
                lblMsg.Text = "用户删除成功！";
            else
                lblMsg.Text = "该用户记录不存在！";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "用户删除失败，错误原因：" + ex.Message;
        }
        finally
        {
            if (cnn.State == ConnectionState.Open)
                cnn.Close();
        }
    }
}
