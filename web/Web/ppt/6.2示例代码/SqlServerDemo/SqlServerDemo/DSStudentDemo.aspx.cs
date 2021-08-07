using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DSStudentDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //创建类型化的数据集DSStudent的对象
            DSStudent dsStu = new DSStudent();
            //下面的代码为DSStudent数据集的StuInfo表添加一些数据
            string[] stuNo = new string[4] { "1001", "1002", "1003", "1004" };
            string[] name = new string[4] { "张三", "李四", "王五", "李芳" };
            string[] sex = new string[4] { "男", "男", "男", "女" };
            for (int i = 0; i < stuNo.Length; i++)
            {
                DSStudent.StuInfoRow row= dsStu.StuInfo.NewStuInfoRow();
                row[0] = stuNo[i];
                row[1] = name[i];
                row[2] = sex[i];
                dsStu.StuInfo.AddStuInfoRow(row);
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
        DSStudent dsStu = (DSStudent)Session["dsStu"];
        //获取StuInfo表的默认视图
        DataView dvStuInfo = dsStu.StuInfo.DefaultView;
        //定制视图筛选条件
        dvStuInfo.RowFilter = "Name='" + TextBox1.Text.Trim() + "'";
        //将dvStuInfo视图的数据绑定到GridView2上
        GridView2.DataSource = dvStuInfo;
        GridView2.DataBind();
    }
}
