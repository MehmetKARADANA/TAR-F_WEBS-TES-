using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Anasayfa : System.Web.UI.Page
{

    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("SELECT Tbl_Yemekler.*, Tbl_Kategoriler.KategoriAd FROM Tbl_Yemekler LEFT JOIN Tbl_Kategoriler ON Tbl_Yemekler.Kategoriid = Tbl_Kategoriler.Kategoriid;",join.baglanti());
        SqlDataReader read = command.ExecuteReader();
        DataList2.DataSource = read;//veri kaynağın read 
        DataList2.DataBind();
        join.baglanti().Close();


    }

   
}