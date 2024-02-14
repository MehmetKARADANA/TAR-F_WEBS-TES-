using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Tarifler : System.Web.UI.Page
{

    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        //onaysız tarifler
        SqlCommand command=new SqlCommand("SELECT * From Tbl_Tarifler Where TarifDurum=0",join.baglanti());
        SqlDataReader dr=command.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind(); 
        join.baglanti().Close();

        //onaylanmayan tarifler
        SqlCommand command2 = new SqlCommand("SELECT * From Tbl_Tarifler Where TarifDurum=1", join.baglanti());
        SqlDataReader dr2 = command2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
        join.baglanti().Close();

    }

    protected void btnPanel2Visible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnPanel2Nonvisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnPanel4visible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnPanel4Nonvisible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}