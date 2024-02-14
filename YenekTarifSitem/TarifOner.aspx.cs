using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{

    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /* protected void Button1_Click(object sender, EventArgs e)
     {
         SqlCommand command = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", join.baglanti());
         command.Parameters.AddWithValue("@t1",txtTarifAd.Text);
         command.Parameters.AddWithValue("@t2", txtMalzeme.Text);
         command.Parameters.AddWithValue("@t3", txtTarif.Text);
         command.Parameters.AddWithValue("@t4", FileUpload1.FileName);
         command.Parameters.AddWithValue("@t5", TxtToneren.Text);
         command.Parameters.AddWithValue("@t6", txtMail.Text);
         command.ExecuteNonQuery();
         join.baglanti().Close();
         Response.Write("Tarifiniz Alınmıştır.");
     }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!TarifEklenmisMi() &&  !string.IsNullOrEmpty(txtTarifAd.Text))
        {
            SqlCommand command = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", join.baglanti());
            command.Parameters.AddWithValue("@t1", txtTarifAd.Text);
            command.Parameters.AddWithValue("@t2", txtMalzeme.Text);
            command.Parameters.AddWithValue("@t3", txtTarif.Text);
            command.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            command.Parameters.AddWithValue("@t5", TxtToneren.Text);
            command.Parameters.AddWithValue("@t6", txtMail.Text);
            command.ExecuteNonQuery();
            join.baglanti().Close();

            // Tarif ekledikten sonra textbox'ları temizle
            Temizle();

            // Kullanıcıya mesaj göster
            Response.Write("Tarifiniz alınmıştır.");
        }
        else
        {
            Response.Write("Bu tarif zaten ekli.(veya farklı tarif ismi ile giriniz)");
        }
    }

    private bool TarifEklenmisMi()
    {
        SqlCommand checkCommand = new SqlCommand("SELECT COUNT(*) FROM Tbl_Tarifler WHERE TarifAd = @t1", join.baglanti());
        checkCommand.Parameters.AddWithValue("@t1", txtTarifAd.Text);
        int count = (int)checkCommand.ExecuteScalar();//commandın dönderdiği nesneyi tek bir int nesneye dondürmeye yarar
        join.baglanti().Close();

        return count > 0;//başka değer varsa true
    }

    private void Temizle()
    {
        txtTarifAd.Text = "";
        txtMalzeme.Text = "";
        txtTarif.Text = "";
        TxtToneren.Text = "";
        txtMail.Text = "";
    }
}