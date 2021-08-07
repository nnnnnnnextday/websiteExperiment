using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ConnectionDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //从web.config配置文件中读取数据库连接字符串
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        //定义连接对象
        SqlConnection cnn = new SqlConnection(strCnn);
        try
        {
            //判断数据库连接状态，如果是关闭的，则需要用Open()打开
            if(cnn.State==ConnectionState.Closed)                
                cnn.Open();//打开连接
            Label1.Text = "成功建立Sql Server 2005数据库连接";
        }
        catch (Exception ex)
        {
            Label1.Text = "创建连接失败，错误原因：" + ex.Message;
        }
        finally
        {
            //判断数据库连接状态，如果是打开的，则需要用Close()关闭
            if(cnn.State==ConnectionState.Open)
                cnn.Close();
        }
    }
}
