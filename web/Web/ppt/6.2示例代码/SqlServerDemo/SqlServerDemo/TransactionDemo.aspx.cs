using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TransactionDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //从web.config中获取数据库连接
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;     
        //定义一个事务变量
        SqlTransaction tran = null;
        using (SqlConnection cnn = new SqlConnection(strCnn))
        { 
            try
            {
                cnn.Open();
                //调用SqlConnection的BeginTransaction方法开启一个事务，并返回已经开启的事务                  
                tran = cnn.BeginTransaction();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                //需要指定要添加到事务中去的SqlCommand对象
                cmd.Transaction = tran;
                cmd.CommandText = "delete StuInfo where MajorId=@MajorId";
                cmd.Parameters.AddWithValue("@MajorId", TextBox1.Text.Trim());
                cmd.ExecuteNonQuery();
                cmd.CommandText = "delete Major where MajorId=@MajorId";
                cmd.ExecuteNonQuery();
                //提交事务
                tran.Commit();
                lblMsg.Text = "事务处理成功！";
            }
            catch (Exception ex)
            {
                //回滚事务，数据库不做任何修改
                tran.Rollback();
                lblMsg.Text = "事务处理不成功！";
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                    cnn.Close();
            }
        }
    }
}
