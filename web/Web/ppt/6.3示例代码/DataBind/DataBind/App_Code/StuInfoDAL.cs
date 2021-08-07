using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
///学生信息的业务逻辑
/// </summary>
public class StuInfoDAL
{
    string   _connectionString = ConfigurationManager.ConnectionStrings["StudentConnectionString"].ConnectionString;
	public StuInfoDAL()
	{
	}
    //查询所有学生的信息
    public DataTable GetStuInfo()
    {
        SqlConnection cnn = new SqlConnection(_connectionString);
        string selectString = "SELECT * FROM StuInfo";
        SqlDataAdapter da = new SqlDataAdapter(selectString,cnn);
        cnn.Open();
        DataTable dt =new DataTable();
        da.Fill(dt);
        return dt;
     }
    //更新学生信息
    public void UpdateStuInfo(string stuNo, string name, string sex, DateTime birth, int majorId)
    {
        SqlConnection con = new SqlConnection(_connectionString);
        string updateString = "UPDATE StuInfo set Name=@Name,Sex=@Sex,Birth=@Birth,MajorId=@MajorId where StuNo=@StuNo";
        SqlCommand cmd = new SqlCommand(updateString, con);
        cmd.Parameters.AddWithValue("@StuNo",stuNo);
        cmd.Parameters.AddWithValue("@Name",name);
        cmd.Parameters.AddWithValue("@Sex",sex);
        cmd.Parameters.AddWithValue("@Birth",birth);
        cmd.Parameters.AddWithValue("@MajorId",majorId);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    //删除学生信息
    public void DeleteStuInfo(string stuNo)
    {
        SqlConnection con = new SqlConnection(_connectionString);
        string deleteString = "DELETE FROM  StuInfo WHERE StuNo=@StuNo";
        SqlCommand cmd = new SqlCommand(deleteString, con);
        cmd.Parameters.AddWithValue("@StuNo", stuNo);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}
