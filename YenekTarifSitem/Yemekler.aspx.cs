using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Yemekler : System.Web.UI.Page
{
    string idYemek = "";
    string islem = "";
    string kategoriid = "";//silme işlemindeki kategori için html kodundaki bağlama işlemide okey


    SqlClass join=new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    { 


        if (!IsPostBack)
        {
            idYemek = Request.QueryString["idYemek"];
            islem = Request.QueryString["islem"];
            kategoriid = Request.QueryString["kategoriid"];
            //postback  içine almadan önce bütün yemekler başta seçili gelen kategori id ile kaydediliyordu
            //kategori listesi
            SqlCommand command2 = new SqlCommand("Select * from Tbl_Kategoriler", join.baglanti());
            SqlDataReader dr2 = command2.ExecuteReader();
            DropDownListKategori.DataTextField = "KategoriAd";//KategoriAd özelliğine sahip olan veri kaynağından alınan her bir öğe, DropDownList içinde metin olarak görünecek.
            DropDownListKategori.DataValueField = "Kategoriid";//Kategoriid özelliği DropDownList'in değeri olarak atanacak.
            DropDownListKategori.DataSource = dr2;// Bu özellik, DropDownList'in veri kaynağını belirtir
            DropDownListKategori.DataBind();//Bu metod, DropDownList'i veri kaynağıyla bağlar ve verileri görüntüler.


        }
        Panel2.Visible = false;
        Panel4.Visible = false;

        SqlCommand command=new SqlCommand("Select * From Tbl_Yemekler",join.baglanti());
        SqlDataReader dr=command.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        join.baglanti().Close();

        //silme islemi
        if (islem=="sil") {

            SqlCommand commandDelete = new SqlCommand("Delete  From Tbl_Yemekler where Yemekid=@d1", join.baglanti());
            commandDelete.Parameters.AddWithValue("@d1", idYemek);
            commandDelete.ExecuteNonQuery();
            join.baglanti().Close();
            Response.Write("Yemek Silindi...");
            //kategori adet azaltma
            SqlCommand command3 = new SqlCommand("Update Tbl_Kategoriler Set KategoriAdet=KategoriAdet-1 Where Kategoriid=@k1",join.baglanti());
            command3.Parameters.AddWithValue("@k1",kategoriid);
            command3.ExecuteNonQuery();
            join.baglanti().Close();


        }




    }

    protected void btnYemekVisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnyemekNonvisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnyemekekleVisible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnyemekekleNonvisible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnYemekEkle_Click(object sender, EventArgs e)
    {
        if (!YemekEklenmismi() &&  !string.IsNullOrEmpty(txtYemekAd.Text))//!string.IsNullOrEmpty(txtYemekAd.Text) bu kullanım daha iyi
        {
           //gerek yok basit yoldan yaptım //string selectedCategoryId = DropDownListKategori.SelectedItem.Value; // Seçili kategorinin "Kategoriid" değerini al
            SqlCommand commandAdd = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", join.baglanti());
            commandAdd.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            commandAdd.Parameters.AddWithValue("@p2", txtMalzemeler.Text);
            commandAdd.Parameters.AddWithValue("@p3", txtTarif.Text);
            commandAdd.Parameters.AddWithValue("@p4", DropDownListKategori.SelectedValue);
            commandAdd.ExecuteNonQuery();
            //kategori artıırma
            SqlCommand commandKategoriArttır=new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet = KategoriAdet + 1 WHERE Kategoriid =@t1;", join.baglanti());
            commandKategoriArttır.Parameters.AddWithValue("@t1",DropDownListKategori.SelectedValue);
            commandKategoriArttır.ExecuteNonQuery();
            Temizle();
            Response.Write("Yemek Eklendi");
            join.baglanti().Close();

            
        }
        else{
            Response.Write("Aynı isimde yemek var veya isim girmediniz...");
        }


    }


    private bool YemekEklenmismi()
    {
        SqlCommand checkCommand = new SqlCommand("SELECT COUNT(*) FROM Tbl_Yemekler WHERE YemekAd = @t1", join.baglanti());
        checkCommand.Parameters.AddWithValue("@t1", txtYemekAd.Text);
        int count = (int)checkCommand.ExecuteScalar();//commandın dönderdiği nesneyi tek bir int nesneye dondürmeye yarar
        join.baglanti().Close();

        return count > 0;//başka değer varsa true
    }

    private void Temizle()
    {
        txtYemekAd.Text = "";
        txtMalzemeler.Text = "";
        txtTarif.Text = "";
    }
}