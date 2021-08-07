using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            //通过字符串直接串接的方法构建SQL命令
            cmd.CommandText = "select * from UserInfo where UserId='" + txtName.Text.Trim() + "' and Password='" + txtPassword.Text.Trim().GetHashCode()+"'";
            SqlDataReader UserReader = null;
            try
            {
                if (cnn.State == ConnectionState.Closed)
                    cnn.Open();
                UserReader = cmd.ExecuteReader();
                
                if (UserReader.Read())//最多只有一条记录
                {
                    //验证通过，保存用户名信息，并跳转到其他页面
                    Session["UserId"] = txtName.Text.Trim();
                    Response.Redirect("~/DataReaderDemo.aspx");
                }
                else
                {
                    lblMsg.Text = "用户名、密码不正确！";
                }

            }
            catch (Exception ex)
            {
                Response.Write("用户登录失败，错误原因：" + ex.Message);
            }
            finally
            {
                if (UserReader.IsClosed == false)
                    UserReader.Close();
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
    protected void btnSafeLogin_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            //设置带参的SQL命令
            cmd.CommandText = "select * from UserInfo where UserId=@UserId and Password=@Password";
            //为Command对象准备@UserId参数
            SqlParameter userIdParam = new SqlParameter();//定义参数对象
            userIdParam.ParameterName = "@UserId";//参数名
            userIdParam.SqlDbType = SqlDbType.VarChar;//设置参数值的SQL数据库参数类型
            userIdParam.Size = 20;//参数值的大小
            userIdParam.Direction = ParameterDirection.Input;//设置参数的方向
            userIdParam.Value = txtName.Text.Trim();//设置参数的值
            cmd.Parameters.Add(userIdParam);//将准备好的参数对象添加到Command对象中
            //为Command对象准备@Password参数
            SqlParameter passwordParam = new SqlParameter();
            passwordParam.ParameterName = "@Password";
            passwordParam.SqlDbType = SqlDbType.VarChar;
            passwordParam.Size = 20;
            passwordParam.Direction = ParameterDirection.Input;
            passwordParam.Value = txtPassword.Text.Trim().GetHashCode();
            cmd.Parameters.Add(passwordParam);
            //可用以下代码给Command对象的参数赋值
            //cmd.Parameters.AddWithValue("@UserId", txtName.Text.Trim());
            //cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim().GetHashCode());

            SqlDataReader UserReader = null;
            try
            {
                if (cnn.State == ConnectionState.Closed)
                    cnn.Open();
                UserReader = cmd.ExecuteReader();
                if (UserReader.Read())//最多只有一条记录
                {
                    //验证通过，保存用户名信息，并跳转到其他页面
                    Session["UserId"] = txtName.Text.Trim();
                    Response.Redirect("~/DataReaderDemo.aspx");
                }
                else
                {
                    lblMsg.Text = "用户名、密码不正确！";
                }
            }
            catch (Exception ex)
            {
                Response.Write("用户登录失败，错误原因：" + ex.Message);
            }
            finally
            {
                if (UserReader.IsClosed == false)
                    UserReader.Close();
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
    protected void btnStoredProcdureLogin_Click(object sender, EventArgs e)
    {
        if (this.IsValid)
        {
            string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            //设置存储过程的名称
            cmd.CommandText = "ProcLogin";
            //设置命令类型为存储过程
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim().GetHashCode());
            SqlDataReader UserReader = null;
            try
            {
                if (cnn.State == ConnectionState.Closed)
                    cnn.Open();
                UserReader = cmd.ExecuteReader();
                if (UserReader.Read())
                {
                    Session["UserId"] = txtName.Text.Trim();
                    Response.Redirect("~/DataReaderDemo.aspx");
                }
                else
                {
                    lblMsg.Text = "用户名、密码不正确！";
                }
            }
            catch (Exception ex)
            {
                Response.Write("用户登录失败，错误原因：" + ex.Message);
            }
            finally
            {
                if (UserReader.IsClosed == false)
                    UserReader.Close();
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
}
