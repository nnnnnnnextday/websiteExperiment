using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DataSetDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //本例只有一张表，可以不定义数据集对象
            DataSet dsStu = new DataSet();
            //创建名为StuInfo表对象
            DataTable dtStuInfo = new DataTable("StuInfo");
            //将表对象添加到数据集对象中
            dsStu.Tables.Add(dtStuInfo);
            //创建名为StuNo列对象，类型为String
            DataColumn columnStuNo = new DataColumn("StuNo", System.Type.GetType("System.String"));
            //将创建好的列对象添加到表中
            dtStuInfo.Columns.Add(columnStuNo);
            DataColumn columnName = new DataColumn("Name", System.Type.GetType("System.String"));
            dtStuInfo.Columns.Add(columnName);
            DataColumn columnSex = new DataColumn("Sex", System.Type.GetType("System.String"));
            dtStuInfo.Columns.Add(columnSex);
            //下面的代码为StuInfo表添加一些数据
            string[] stuNo = new string[4] { "1001", "1002", "1003", "1004" };
            string[] name = new string[4] { "张三", "李四", "王五", "李芳" };
            string[] sex = new string[4] { "男", "男", "男", "女" };
            for (int i = 0; i < stuNo.Length; i++)
            {
                DataRow row = dtStuInfo.NewRow();
                row[0] = stuNo[i];
                row[1] = name[i];
                row[2] = sex[i];
                dtStuInfo.Rows.Add(row);
            }
            //将StuInfo表的数据绑定到GridView1上
            GridView1.DataSource = dsStu;//设置数据源
            GridView1.DataMember = "StuInfo";//设置显示的表名
            GridView1.DataBind();//绑定到GridView控件上
            //用Session保存数据集信息，以便后续访问
            Session["dsStu"] = dsStu;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //从Session变量中取出数据集
        DataSet dsStu = (DataSet)Session["dsStu"];
        //获取StuInfo表的默认视图
        DataView dvStuInfo = dsStu.Tables[0].DefaultView;
        //定制视图筛选条件
        dvStuInfo.RowFilter = "Name='"+TextBox1.Text.Trim()+"'";
        //将dvStuInfo视图的数据绑定到GridView2上
        GridView2.DataSource = dvStuInfo;
        GridView2.DataBind();
    }
}
