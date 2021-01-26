using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if(!IsPostBack)
            {
                GridView1.Visible = false;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            GridView1.Visible = true;
            Button1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            UpdateProgress1.Visible = false;
            System.Threading.Thread.Sleep(5000);
            Label1.Text = "MY NAME IS CHINMAY PADHI";
        }
    }
}