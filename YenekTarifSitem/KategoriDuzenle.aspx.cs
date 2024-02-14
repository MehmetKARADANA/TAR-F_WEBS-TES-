using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriDuzenle : System.Web.UI.Page
{
    SqlClass join = new SqlClass();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["kategoriid"];//şuan resim ile ilgili işlem yapmıyorum sonra eklerim

        if (Page.IsPostBack==false) {//sayfa ilk defa yükleniyorsa demek //çünkü update yaparken sayfa yenileğinden tekrar txtboxları eşitlediğinden güncelleme yapılamıyor
            SqlCommand command = new SqlCommand("Select KategoriAd,KategoriAdet From Tbl_Kategoriler Where Kategoriid=@p1", join.baglanti());
            command.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read()) {

                txtKtgrAd.Text = dr[0].ToString();
                txtKtgrAdet.Text = dr[1].ToString();

            }
            join.baglanti().Close();
        }


    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2 where Kategoriid=@p3",join.baglanti());
        command.Parameters.AddWithValue("@p1",txtKtgrAd.Text);
        command.Parameters.AddWithValue("@p2", txtKtgrAdet.Text);
        command.Parameters.AddWithValue("@p3", id);
        command.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Kategori Guncellendi");

    }
}