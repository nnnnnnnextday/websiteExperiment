using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridViewDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("load"); 
        
    }


    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //Response.Write("crea");
        //判断当前产生行是否是数据行
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //当鼠标移到改行的时候，设置该行背景色为蓝色，并保存原来的背景色
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='blue';this.style.cursor='hand'");
            //当鼠标移走时，还原背景色
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor");
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //Response.Write("bound");
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //由于数据已经绑定，则字段信息可以直接从行中获取
            string sex = ((Label)e.Row.Cells[3].FindControl("Label1")).Text;
            //如果是女生，则更改前景色为红色并加粗
            if ( sex== "女")
            {
                e.Row.ForeColor = System.Drawing.Color.Red;
                e.Row.Font.Bold = true;
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //当前选中的位置
        //Response.Write("CHANGE");
        
        
        int selectIndex = GridView1.SelectedIndex;
        //当GridViewy有多个主键时，用下面语句获取不同的键值
        //当GridViewy只有一个主键时，用GridView1.SelectedDataKey.Value获取
        string stuNo = GridView1.SelectedDataKey.Values["StuNo"].ToString();
        //读取选中行中绑定列的值
        string Name = GridView1.SelectedRow.Cells[2].Text;
        //读取选中行中模板列的值
        string sex = ((Label)GridView1.SelectedRow.Cells[3].FindControl("Label1")).Text;
        lblMsg.Text = "选中第" + selectIndex.ToString() + "行。学号：" + stuNo + ";姓名：" + Name + ";性别：" + sex;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Write("command");
    }
}
