using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;
namespace work2
{
    public partial class deleteUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //调用自定义的FillTable方法，将查询到的数据绑定到GridView控件上
                gvInfo.DataSource = FillTable("Select * from Department ");
                gvInfo.DataBind();
                
            }

        }
        private DataTable FillTable(string sql)
        {
            string strCnn = ConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
            using (SqlConnection cnn = new SqlConnection(strCnn))
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
           String strCnn = ConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
           SqlConnection cnn = new SqlConnection(strCnn);
           SqlCommand selectImg = new SqlCommand("select Image from teachers where TeacherID = @TID2",cnn);
           SqlCommand cmd = new SqlCommand("delete from teachers where TeacherID= @TID", cnn);
           cnn.Open();

           SqlParameter IDPara = new SqlParameter();
          
           IDPara.ParameterName = "@TID";
           IDPara.SqlDbType = SqlDbType.Int;
           IDPara.Value = int.Parse(TIDBox.Text.Trim());

           
           SqlParameter IDPara2 = new SqlParameter();
           IDPara2.ParameterName = "@TID2";
           IDPara2.SqlDbType = SqlDbType.Int;
           IDPara2.Value = int.Parse(TIDBox.Text.Trim());

           cmd.Parameters.Add(IDPara);
           selectImg.Parameters.Add(IDPara2);

            //先选择img 文件名字
           SqlDataReader readder =  selectImg.ExecuteReader();
           readder.Read();
           Response.Write(readder.FieldCount);
           Response.Write(readder.GetValue(0));
            //删除文件
           
           string ImgName = null;
           //FileInfo fi = new System.IO.FileInfo(@"C:\Users\sushi\Documents\Visual Studio 2008\Projects\work2\work2\res\"+ImgName);
           try
           {
               ImgName = (string)readder.GetValue(0);
               FileInfo fi = new FileInfo(@"C:\Users\sushi\Desktop\web\work2\work2\res\" + ImgName);
               fi.Delete();
               readder.Close();
               cmd.ExecuteNonQuery();

               //CleanFiles(dir);
               //DeleteLabel.Text = "删除成功";
               DeleteLabel.Text = "删除成功，文件：" + ImgName;

           }
           catch (Exception ex)
           {
               DeleteLabel.Text = ImgName+"删除失败，原因：" + ex.Message;
           }

            
           
           cnn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //从web.config中读取连接字符串
            string strCnn = ConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
            //创建连接对象

            using (SqlConnection cnn = new SqlConnection(strCnn))
            {
                //创建DataAdapter对象，使用select语句和连接对象初始化
                SqlDataAdapter daStu = new SqlDataAdapter("select * from Department ", cnn);
                //建立CommandBuilder对象来自动生成DataAdapter对象的Command对象
                SqlCommandBuilder sbStu = new SqlCommandBuilder(daStu);
                DataSet ds = new DataSet();
                //创建DataTable对象
                DataTable dtStuInfo = new DataTable();
                //用Fill方法返回的数据，填充DataTable对象
                daStu.Fill(dtStuInfo);
                //设置dtStuInfo的主键，便用后面调用Find方法查询记录
                dtStuInfo.PrimaryKey = new DataColumn[] { dtStuInfo.Columns["DepartmentID"] };
                //根据txtStuNo文本框的输入查询相应的记录，以便修改
                DataRow row = dtStuInfo.Rows.Find(DepID.Text.Trim());
                //如果存在相应记录，则修改并更新到数据库
                if (row != null)
                {
                    //修改记录值
                    row.BeginEdit();
                    row[0] = DepID.Text.Trim();
                    row[1] = DepName.Text.Trim();
                    
                    row.EndEdit();
                    //提交更新
                    ds.Tables.Add(dtStuInfo);
                    
                    
                    daStu.Update(dtStuInfo);
                    UpdateLab.Text = "修改成功！";
                    //重新绑定数据
                    gvInfo.DataSource = FillTable("Select * from Department ");
                    gvInfo.DataBind();
                    
                }
                else
                {
                    
                    UpdateLab.Text = "该系不存在！";
                }
            }
        }
    }
}
