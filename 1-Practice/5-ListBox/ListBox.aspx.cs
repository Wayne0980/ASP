using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ListBox1.Items.Add("Keyboard");
            ListBox1.Items.Add("Mouse");
            ListBox1.Items.Add("Monitor");
            ListBox1.Items.Add("CPU");
            ListBox1.Items.Add("USB");
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            if (ListBox1.Items[i].Selected == true)
            {
                ListBox2.Items.Add(ListBox1.Items[i].Text);
                ListBox1.Items[i].Enabled = false;
            }
        }
        for (int i = ListBox1.Items.Count - 1; i >= 0; i--)
        {
            if (ListBox1.Items[i].Enabled == false)
            { 
                ListBox1.Items.RemoveAt(i);
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            if (ListBox2.Items[i].Selected == true)
            {
                ListBox1.Items.Add(ListBox2.Items[i].Text);
                ListBox2.Items[i].Enabled = false;
            }
        }
        for (int i = ListBox2.Items.Count - 1; i >= 0; i--)
        {
            if (ListBox2.Items[i].Enabled == false)
            {
                ListBox2.Items.RemoveAt(i);
            }
        }
    }
}