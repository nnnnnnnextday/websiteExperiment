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
    public partial class AddT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            String strCnn = ConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            SqlCommand cmd = new SqlCommand("select * from teachers",cnn);
            cnn.Open();
            SqlDataReader read = cmd.ExecuteReader();
            Response.Write(read.Read());
            Response.Write(read.GetValue(1));
            cnn.Close();*/
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false) return;

            String strCnn = ConfigurationManager.ConnectionStrings["cnnString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strCnn);
            cnn.Open();
            string sql = "insert into teachers(TeacherID,TName,TBirth,LengthOfTea,TDepartment,Image)values(@TID,@TNAME,@TBIR,@TLEN,@TDEP,@TIMG)";
            SqlCommand command = new SqlCommand(sql, cnn);

            SqlParameter IDPara = new SqlParameter();
            IDPara.ParameterName = "@TID";
            IDPara.SqlDbType = SqlDbType.Int;
            IDPara.Value =int.Parse( IDbox.Text.Trim());
            SqlParameter NamePara = new SqlParameter();

            NamePara.ParameterName = "@TNAME";
            NamePara.SqlDbType = SqlDbType.VarChar;
            NamePara.Size = 50;
            NamePara.Value = NameBox.Text.Trim();

            SqlParameter BirthPara = new SqlParameter();

            BirthPara.ParameterName = "@TBIR";
            BirthPara.SqlDbType = SqlDbType.DateTime;
            BirthPara.Value = TBirth.Text.Trim();


            SqlParameter LenPara = new SqlParameter();
            LenPara.ParameterName = "@TLEN";
            LenPara.SqlDbType = SqlDbType.Int;
            LenPara.Value = int.Parse(Tage.Text.Trim()); 

            SqlParameter DepPara = new SqlParameter();
            DepPara.ParameterName = "@Tdep";
            DepPara.SqlDbType = SqlDbType.Int;
            DepPara.Value = int.Parse(Tage.Text.Trim());

            SqlParameter ImgPara = new SqlParameter();
            ImgPara.ParameterName = "@TIMG";
            ImgPara.SqlDbType = SqlDbType.VarChar;
            ImgPara.Size = 50;
           

            command.Parameters.Add(IDPara);
            command.Parameters.Add(NamePara);
            command.Parameters.Add(BirthPara);
            command.Parameters.Add(LenPara);
            command.Parameters.Add(DepPara);
            string img = null;
            if (FileUpload1.HasFile)
            {
                
                string fname = FileUpload1.PostedFile.FileName;
                FileInfo file = new FileInfo(fname);
                string fileName = file.Name;

               
                string webFilePath = Server.MapPath("res/" + fileName);
                img = fileName;
                //获取与 Web 服务器上的指定虚拟路径相对应的物理文件路径
                if (!File.Exists(webFilePath))
                {
                    try
                    {
                        FileUpload1.SaveAs(webFilePath);
                        this.lMsg.Text = " 提 示 ： 上 传 成功  ";
                        
                    }
                    catch (Exception ex)
                    {
                        this.lMsg.Text = " 提 示 ： 上 传 失 败 ， 原 因 ： " +
                        ex.Message;
                        
                    }
                }
                else
                {
                    this.lMsg.Text = "提示：文件已存在";
                }
            }

            ImgPara.Value = img;
            command.Parameters.Add(ImgPara);
            try
            {
                int rowsAffected = command.ExecuteNonQuery();
                this.AddMsg.Text = " 添加成功";
            }
            catch(Exception ex)
            {
                this.AddMsg.Text = " 添加失 败 ， 原 因 ： " +
                        ex.Message;
            }


            cnn.Close();
            command.Dispose();

            
        }
    }
}
