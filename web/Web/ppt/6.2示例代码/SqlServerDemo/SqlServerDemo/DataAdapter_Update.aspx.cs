using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class DataAdapter_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //调用自定义的FillTable方法，将查询到的数据绑定到GridView控件上
            gvStuInfo.DataSource = FillTable("Select * from ViewStuInfo ");
            gvStuInfo.DataBind();
            //调用自定义的FillTable方法，将查询到的数据绑定到DropDownList控件上
            dpMajor.DataSource = FillTable("Select * from Major");
            dpMajor.DataTextField = "MajorName";
            dpMajor.DataValueField = "MajorId";
            dpMajor.DataBind();
        }
    }

    /// <summary>
    /// 使用SqlDataAdapter对象读取数据库的数据
    /// </summary>
    /// <param name="sql">传入sql语句</param>
    /// <returns>以DataTable对象的形式，返回查询结果</returns>
    private DataTable FillTable(string sql)
    {
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        using (SqlConnection cnn = new SqlConnection(strCnn))
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //从web.config中读取连接字符串
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        //创建连接对象
        using (SqlConnection cnn = new SqlConnection(strCnn))
        {
            //创建DataAdapter对象，使用select语句和连接对象初始化
            SqlDataAdapter daStu = new SqlDataAdapter("select * from StuInfo", cnn);
            //建立CommandBuilder对象来自动生成DataAdapter对象的Command对象
            //否则就要自己编写InsertCommand、UpdateCommand、DeleteCommand命令
            SqlCommandBuilder sbStu = new SqlCommandBuilder(daStu);
            //创建DataTable对象
            DataTable dtStuInfo = new DataTable();
            //使用DataAdapter对象的FillSchema方法可以创建DataTable对象的结构
            daStu.FillSchema(dtStuInfo, SchemaType.Mapped);
            //上面这段代码也可写成daStu.Fill(dtStuInfo); 
            //增加新记录
            DataRow dr = dtStuInfo.NewRow();
            //给记录赋值
            dr[0] = txtStuNo.Text.Trim();
            dr[1] = txtName.Text.Trim();
            dr[2] = txtSex.Text.Trim();
            dr[3] = Convert.ToDateTime(txtBirth.Text.Trim());
            dr[4] = dpMajor.SelectedValue;
            dtStuInfo.Rows.Add(dr);
            //提交更新
            daStu.Update(dtStuInfo);
            lblMsg.Text = "添加成功！";
            //重新绑定数据
            gvStuInfo.DataSource = FillTable("Select * from ViewStuInfo ");
            gvStuInfo.DataBind();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //从web.config中读取连接字符串
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        //创建连接对象
        using (SqlConnection cnn = new SqlConnection(strCnn))
        {
            //创建DataAdapter对象，使用select语句和连接对象初始化
            SqlDataAdapter daStu = new SqlDataAdapter("select * from StuInfo", cnn);
            //建立CommandBuilder对象来自动生成DataAdapter对象的Command对象
            SqlCommandBuilder sbStu = new SqlCommandBuilder(daStu);
            //创建DataTable对象
            DataTable dtStuInfo = new DataTable();
            //用Fill方法返回的数据，填充DataTable对象
            daStu.Fill(dtStuInfo);
            //设置dtStuInfo的主键，便用后面调用Find方法查询记录
            dtStuInfo.PrimaryKey = new DataColumn[] { dtStuInfo.Columns["StuNo"] };
            //根据txtStuNo文本框的输入查询相应的记录，以便修改
            DataRow row = dtStuInfo.Rows.Find(txtStuNo.Text.Trim());
            //如果存在相应记录，则修改并更新到数据库
            if (row != null)
            {
                //修改记录值
                row.BeginEdit();
                row[1] = txtName.Text.Trim();
                row[2] = txtSex.Text.Trim();
                row[3] = Convert.ToDateTime(txtBirth.Text.Trim());
                row[4] = dpMajor.SelectedValue;
                row.EndEdit();
                //提交更新
                daStu.Update(dtStuInfo);
                lblMsg.Text = "修改成功！";
                //重新绑定
                gvStuInfo.DataSource = FillTable("Select * from ViewStuInfo ");
                gvStuInfo.DataBind();
            }
            else
            {
                lblMsg.Text = "该学生不存在！";
            }
        }
        
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string strCnn = ConfigurationManager.ConnectionStrings["StudentCnnString"].ConnectionString;
        using (SqlConnection cnn = new SqlConnection(strCnn))
        {
            SqlDataAdapter daStu = new SqlDataAdapter("select * from StuInfo", cnn);
            //定义DeleteCommand属性，自定义Delete命令，其中@StuNo是参数
            daStu.DeleteCommand = new SqlCommand("delete from StuInfo where StuNo=@StuNo", cnn);
            //定义@StuNo参数对应于StuInfo表的StuNo列
            daStu.DeleteCommand.Parameters.Add("@StuNo", SqlDbType.VarChar, 8, "StuNo");
            DataTable dtStuInfo = new DataTable();
            //用Fill方法返回的数据，填充DataTable对象
            daStu.Fill(dtStuInfo);
            //设置dtStuInfo的主键，便用后面调用Find方法查询记录
            dtStuInfo.PrimaryKey = new DataColumn[] { dtStuInfo.Columns["StuNo"] };
            //根据txtStuNo文本框的输入查询相应的记录，以便修改
            DataRow row = dtStuInfo.Rows.Find(txtStuNo.Text.Trim());
            // 如果存在相应记录，则删除并更新到数据库
            if (row != null)
            {
                //删除行记录
                row.Delete();
                daStu.Update(dtStuInfo);
                lblMsg.Text = "删除成功！";
                gvStuInfo.DataSource = FillTable("Select * from ViewStuInfo ");
                gvStuInfo.DataBind();
            }
            else
            {
                lblMsg.Text = "没有该记录！";
            }
        }
    }
}
