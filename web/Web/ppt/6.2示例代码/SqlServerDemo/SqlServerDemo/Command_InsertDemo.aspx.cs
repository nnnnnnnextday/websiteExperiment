using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Command_InsertDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (this.IsValid)//页面验证通过
        {
            string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            SqlCommand cmd = new SqlCommand();//建立命令对象
            cmd.Connection = cnn;//设置命令对象的数据连接属性
            //把SQL语句赋给命令对象
            cmd.CommandText = "insert into UserInfo(UserId,Password) values('" + txtName.Text.Trim() + "','" + txtPassword.Text.Trim().GetHashCode() + "')";
            //try
            //{
                cnn.Open();//打开连接
                cmd.ExecuteNonQuery();//执行SQL命令
                lblMsg.Text = "用户添加成功！";
            //}
            //catch (Exception ex)
            //{
            //    lblMsg.Text = "用户添加失败，错误原因：" + ex.Message;
            //}
            //finally
            //{
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            //}
        }
    }
}
