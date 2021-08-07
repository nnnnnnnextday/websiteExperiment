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

namespace work1
{
    
    public partial class _Default : System.Web.UI.Page
    {
        int Score = 0;
        string type;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            type = ProType.SelectedValue;
        }

        protected void BeginBtn_Click(object sender, EventArgs e)
        {

            type = ProType.SelectedValue;
            if (type.Equals("1"))
            {
                
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel2.Visible = false;
            }
            else if (type.Equals("2"))
            {

                Panel2.Visible = true;
                Panel1.Visible = false;
                Panel3.Visible = false;
            }
            else if (type.Equals("3"))
            {
                Panel3.Visible = true;
                Panel1.Visible = false;
                Panel2.Visible = false;
            }


        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label scoreLabel = new Label();


            CountScore();
            scoreLabel.Text = "<br>得分：" + Score
                               + "<br><br>正确答案：<br>一、1.正确答案a 2. 正确答案b <br> 二、1.正确答案c、正确答案d";
            this.Panel4.Controls.Add(scoreLabel);
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void CountScore()
        {
            type = ProType.SelectedValue;
            if (type.Equals("1"))
            {
                if (QueList1.Items[0].Selected == true )
                {
                    Score += 25;
                }
                if (QueList2.Items[0].Selected == true)
                {
                    Score += 25;
                }
                if (QueList3.Items[2].Selected == false && QueList3.Items[3].Selected == false)
                {
                    if (QueList3.Items[0].Selected == true)
                    {
                        Score += 25;
                    }
                    if (QueList3.Items[1].Selected == true)
                    {
                        Score += 25;
                    }
                }

            }
            else if (type.Equals("2"))
            {


            }
            else if (type.Equals("3"))
            {

            }
        }

        protected void QueList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void QueList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void QueList3_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

        }

        protected void RestartBtn_Click(object sender, EventArgs e)
        {

        }

        protected void QuitBtn_Click1(object sender, EventArgs e)
        {

        }
        protected void Btn_Command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Quit":
                    Response.Redirect("Redirect1.aspx");
                    
                    break;
                case "Restart":
                    Name_Input.Text = null;
                    ID_Input.Text = null;
                    Email_Input.Text = null;
                    Panel3.Visible = false;
                    Panel1.Visible = false;
                    Panel2.Visible = false;
                    break;
                
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


    }
}
