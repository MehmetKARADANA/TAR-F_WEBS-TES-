using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class GununYemegiAdmin : System.Web.UI.Page
{
    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        SqlCommand command = new SqlCommand("Select * FROM Tbl_Yemekler ",join.baglanti());
        SqlDataReader dr=command.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        join.baglanti().Close();

    }

    protected void btnYemekVisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnyemekNonvisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible=false;
    }
}