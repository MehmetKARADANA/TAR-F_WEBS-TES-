using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class YemekDuzenle : System.Web.UI.Page
{
    SqlClass join = new SqlClass();
    string idYemek = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        idYemek = Request.QueryString["idYemek"];
        if (!IsPostBack)//sayfa ilk defa yükleniyorsa demek //çünkü update yaparken sayfa yenileğinden tekrar txtboxları eşitlediğinden güncelleme yapılamıyor
        {

            //postback  içine almadan önce bütün yemekler başta seçili gelen kategori id ile kaydediliyordu
            //kategori listesi
            SqlCommand command1 = new SqlCommand("Select * from Tbl_Kategoriler", join.baglanti());
            SqlDataReader dr1 = command1.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";//KategoriAd özelliğine sahip olan veri kaynağından alınan her bir öğe, DropDownList içinde metin olarak görünecek.
            DropDownList1.DataValueField = "Kategoriid";//Kategoriid özelliği DropDownList'in değeri olarak atanacak.
            DropDownList1.DataSource = dr1;// Bu özellik, DropDownList'in veri kaynağını belirtir
            DropDownList1.DataBind();//Bu metod, DropDownList'i veri kaynağıyla bağlar ve verileri görüntüler.

            SqlCommand command2 = new SqlCommand("Select YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim FROM Tbl_Yemekler WHERE Yemekid=@p1 ",join.baglanti());
            command2.Parameters.AddWithValue("@p1",idYemek);
            SqlDataReader dr2=command2.ExecuteReader();
            if (dr2.Read()) {
                txtYemekAd.Text = dr2[0].ToString();
                txtMalzemeler.Text = dr2[1].ToString();
                txtTarif.Text = dr2[2].ToString();
                DropDownList1.SelectedValue = dr2[3].ToString();
            
            }
            join.baglanti().Close();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //önce kategorisini bir azaltalım
        //update ile inner join kullandım
        //"UPDATE Tbl_Kategoriler INNER JOIN Tbl_Yemekler ON Tbl_Kategoriler.Kategoriid= Tbl_Yemekler.Kategoriid Set Tbl_Kategoriler.KategoriAdet=Tbl_Kategoriler.KategoriAdet-1 Where Tbl_Yemekler.Yemekid=@y1"
        SqlCommand command2 = new SqlCommand("UPDATE Tbl_Kategoriler " +
                      "SET Tbl_Kategoriler.KategoriAdet = Tbl_Kategoriler.KategoriAdet - 1 " +
                      "FROM Tbl_Kategoriler " +
                      "INNER JOIN Tbl_Yemekler ON Tbl_Kategoriler.Kategoriid = Tbl_Yemekler.Kategoriid " +
                      "WHERE Tbl_Yemekler.Yemekid = @y1", join.baglanti()) ;
        command2.Parameters.AddWithValue("@y1",idYemek);
        command2.ExecuteNonQuery();
        join.baglanti().Close();

        if (FileUpload1.HasFile == true)
        {//update ediliyor ancak imagete görüntülenemiyor hatayı çözemedim
            FileUpload1.SaveAs(Server.MapPath("/ProjectAssets/" + FileUpload1.FileName));
        }

        SqlCommand command = new SqlCommand("UPDATE Tbl_Yemekler SET YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4,YemekResim=@p6 Where Yemekid=@p5",join.baglanti());
        command.Parameters.AddWithValue("@p1",txtYemekAd.Text);
        command.Parameters.AddWithValue("@p2",txtMalzemeler.Text);
        command.Parameters.AddWithValue("@p3",txtTarif.Text);
        command.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        command.Parameters.AddWithValue("@p6", "~/ProjectAssets/" + FileUpload1.FileName);
        command.Parameters.AddWithValue("@p5", idYemek);
        command.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Yemek Güncellendi");

        //yeni kategoriyi bir artıralım
        SqlCommand command3 = new SqlCommand("UPDATE Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 Where Kategoriid=@k1",join.baglanti());
        command3.Parameters.AddWithValue("@k1",DropDownList1.SelectedValue);
        command3.ExecuteNonQuery();
        join.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //eski günün yemeğini kaldırma
        SqlCommand commanndf = new SqlCommand("Update Tbl_Yemekler set YemekDurum=0;",join.baglanti());
        commanndf.ExecuteNonQuery();
        join.baglanti() .Close();

        //yemeği seç
        SqlCommand commannd = new SqlCommand("Update Tbl_Yemekler set YemekDurum=1 Where Yemekid=@p1", join.baglanti());
        commannd.Parameters.AddWithValue("@p1",idYemek);
        commannd.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Günün yemeği seçildi.");
    }
}