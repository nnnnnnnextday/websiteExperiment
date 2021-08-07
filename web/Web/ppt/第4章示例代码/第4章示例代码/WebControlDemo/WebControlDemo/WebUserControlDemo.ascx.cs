using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControlDemo : System.Web.UI.UserControl
{
    private int minValue = 0;
    private int maxValue = 100;
    private int currentValue;

    public int MaxValue
    {
        get
        {
            return maxValue;
        }
        set
        {
            maxValue = value;
        }
    }
    public int MinValue
    {
        get
        {
            return minValue;
        }
        set
        {
            minValue = value;
        }
    }
    public int CurrentValue
    {
        get
        {
            return currentValue;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            currentValue = MinValue;
        }
        else
        {
            currentValue = int.Parse(ViewState["currentNumber"].ToString());
        }
        DisplayNumber();
    }

    protected void btnUp_Click(object sender, EventArgs e)
    {
        if (currentValue < MaxValue)
            currentValue++;
        DisplayNumber();
    }
    protected void btnDown_Click(object sender, EventArgs e)
    {
        if (currentValue > MinValue)
            currentValue--;
        DisplayNumber();
    }
    protected void DisplayNumber()
    {
        txtNum.Text = CurrentValue.ToString();
        ViewState["currentNumber"] = CurrentValue.ToString();
    }
}
