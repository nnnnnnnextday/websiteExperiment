using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DataReaderDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("您好，" + Session["UserId"]);
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(strCnn);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "select * from StuInfo";
        SqlDataReader stuReader=null;//创建DataReader对象的引用
        try
        {
            if(cnn.State==ConnectionState.Closed)
                cnn.Open();
            //执行SQL命令，并获取查询结果
            stuReader=cmd.ExecuteReader();
            //依次读取查询结果的字段名称，并以表格的形式显示
            Response.Write("<table border='1'><tr align='center'>");
            for (int i = 0; i < stuReader.FieldCount; i++)
            {
                Response.Write("<td>" + stuReader.GetName(i) +"</td>");
            }
            Response.Write("</tr>");
            //如果DataRead对象成功获得数据，返回true，否则返回false
            while (stuReader.Read())
            {
                //依次读取查询结果的字段值，并以表格的形式显示
                Response.Write("<tr>");
                for (int j = 0; j < stuReader.FieldCount; j++)
                {
                    Response.Write("<td>"+stuReader.GetValue(j)+"</td>");
                }
                Response.Write("</tr>");
            }
            Response.Write("</table>");
        }
        catch (Exception ex)
        {
            Response.Write("用户添加失败，错误原因：" + ex.Message);
        }
        finally
        {
            //关闭DataReader对象
            if(stuReader.IsClosed==false)
                stuReader.Close();
            if(cnn.State==ConnectionState.Open)
            cnn.Close();
        }
    }
}
