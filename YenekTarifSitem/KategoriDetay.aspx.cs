using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriDetay : System.Web.UI.Page
{
    string idKategori="";

    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        idKategori = Request.QueryString["kategoriid"];
        SqlCommand command = new SqlCommand("Select * From Tbl_Yemekler Where Kategoriid = @p1", join.baglanti());
        command.Parameters.AddWithValue("@p1", idKategori);
        SqlDataReader dr=command.ExecuteReader();
         DataList2.DataSource = dr;
         DataList2.DataBind();
        join.baglanti().Close();

    }
}