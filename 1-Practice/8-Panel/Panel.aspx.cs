using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Panel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox t1 = new TextBox();
        t1.Text = "Add new TextBox";
        t1.BackColor = Color.LightBlue;

        Panel1.Controls.Add(t1);
    }
}