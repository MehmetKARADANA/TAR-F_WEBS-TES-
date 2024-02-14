using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TariflerDetay : System.Web.UI.Page
{
    SqlClass join = new SqlClass();
    string idTarif;
    protected void Page_Load(object sender, EventArgs e)
    {
        idTarif = Request.QueryString["idTarif"];

        if (!Page.IsPostBack) {
            SqlCommand command = new SqlCommand("Select TarifAd,TarifMalzeme,TarifYapilis,TarifSahip,TarifSahipMail FROM Tbl_Tarifler Where Tarifid=@p1", join.baglanti());
            command.Parameters.AddWithValue("@p1", idTarif);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {

                txtTarifAd.Text = dr[0].ToString();
                txtMalzemeler.Text = dr[1].ToString();
                txtTarif.Text = dr[2].ToString();
                txtTarifOneren.Text = dr[3].ToString();
                txtMail.Text = dr[4].ToString();
                //kategoriyi admin belirler
            }
            join.baglanti().Close();

            SqlCommand drpdatacommand = new SqlCommand("Select * From Tbl_Kategoriler ",join.baglanti());
            SqlDataReader dr2=drpdatacommand.ExecuteReader();

            DropDownListKategori.DataTextField = "KategoriAd";
            DropDownListKategori.DataValueField ="Kategoriid";

            DropDownListKategori.DataSource = dr2;
            DropDownListKategori.DataBind();
            join.baglanti().Close();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //iki işlem yapıcak buarada bir update bir insert into
        //yemeği anasayfayta ekleme
        SqlCommand command2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)",join.baglanti());
        command2.Parameters.AddWithValue("@p1",txtTarifAd.Text);
        command2.Parameters.AddWithValue("@p2",txtMalzemeler.Text);
        command2.Parameters.AddWithValue("@p3",txtTarif.Text);
        command2.Parameters.AddWithValue("@p4",DropDownListKategori.SelectedValue);
        command2.ExecuteNonQuery();
        join.baglanti().Close();

        //durum güncelleme
        SqlCommand command3 = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 WHERE Tarifid=@t1",join.baglanti());
        command3.Parameters.AddWithValue("@t1",idTarif);
        command3.ExecuteNonQuery();
        join.baglanti() .Close();

        //kategori adet ARTIRMA
        SqlCommand command4 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 Where Kategoriid=@k1",join.baglanti());
        command4.Parameters.AddWithValue("@k1",DropDownListKategori.SelectedValue);
        command4.ExecuteNonQuery();
        join.baglanti() .Close();

        Response.Write("Tarif Onaylandı.");
    }
}