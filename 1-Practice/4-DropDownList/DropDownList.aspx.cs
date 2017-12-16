using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropDownList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        switch (DropDownList1.SelectedValue)
        { 
            case "0":
                DropDownList2.Items.Add(new ListItem("== Select Job ==","0"));
                DropDownList2.Enabled = false;
                break;
            case "1":
                DropDownList2.Items.Add(new ListItem("Engineer", "0"));
                DropDownList2.Items.Add(new ListItem("Teacher", "1"));
                DropDownList2.Items.Add(new ListItem("Manager", "2"));
                DropDownList2.Enabled = true;
                break;
            case "2":
                DropDownList2.Items.Add(new ListItem("Engineer", "0"));
                DropDownList2.Items.Add(new ListItem("Manager", "1"));
                DropDownList2.Items.Add(new ListItem("Ministry", "2"));
                DropDownList2.Enabled = true;
                break;
        
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label1.Text = string.Format("{0},{1}",DropDownList1.SelectedItem.Text , DropDownList2.SelectedItem.Text);
    }
}