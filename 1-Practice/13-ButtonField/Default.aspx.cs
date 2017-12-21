using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvProdutID_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gvProdutID_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow selectedRow = gvProdutID.Rows[index];
        TableCell productName = selectedRow.Cells[1];
        switch(e.CommandName)
        {
            case "Order":
                lbOrder.Items.Add(productName.Text);
                break;
            case "CancelOrder":
                if(lbOrder.Items.Count > 0)
                {
                    int i = 0;
                    while(i<=lbOrder.Items.Count-1)
                    {
                        if(lbOrder.Items[i].Text == productName.Text)
                        {
                            lbOrder.Items.Remove(lbOrder.Items[i]);
                            break;
                        }else{
                            i++;
                        }
                    }
                }
                break;
        }
    }
}