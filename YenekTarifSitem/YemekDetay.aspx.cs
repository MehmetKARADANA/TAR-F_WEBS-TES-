using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    String yemekid = "";
    SqlClass join = new SqlClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        yemekid = Request.QueryString["yemekid"];//dinamik olarak <a> dan getirdik

        //yyemek özellikleri
        SqlCommand command3 = new SqlCommand("SELECT * FROM Tbl_Yemekler where yemekid=@y1", join.baglanti());
        command3.Parameters.AddWithValue("@y1",yemekid);
        SqlDataReader read = command3.ExecuteReader();
        DataList1.DataSource = read;//veri kaynağın read 
        DataList1.DataBind();
        join.baglanti().Close();

        SqlCommand command = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekid=@p1",join.baglanti());
        command.Parameters.AddWithValue("@p1",yemekid);
        SqlDataReader dr = command.ExecuteReader();
        while (dr.Read())//datalist yok bu işlemde
        {
            Label4.Text = dr[0].ToString();//label 4 e yemekad dan dönen değeri ilk indeksten itibaren eşitle
        }
        join.baglanti().Close();

        SqlCommand command2 = new SqlCommand("Select * From Tbl_Yorumlar WHERE Yemekid=@p2", join.baglanti());
        command2.Parameters.AddWithValue("@p2",yemekid);//datalist var bu işlemde labellara değerler evaller ile verildi
        SqlDataReader dr2= command2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
        join.baglanti().Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      //  yemekid = Request["yemekid"];//yemekid ye <a> içinde Yemekid değeri atandı
        SqlCommand command3 = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", join.baglanti());
        command3.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
        command3.Parameters.AddWithValue("@p2", txtMail.Text);
        command3.Parameters.AddWithValue("@p3", txtYorum.Text);
        command3.Parameters.AddWithValue("@p4", yemekid);//eklediğimiz için int değer lazım sorgu yapmıyoruz yukarıdan farkı bu id int
        command3.ExecuteNonQuery();
        join.baglanti().Close();

        // Tarif ekledikten sonra textbox'ları temizle
        Temizle();

        Response.Write("Yorum Eklendi");

        //if (int.TryParse(Request.QueryString["yemekid"], out int ParsedYemekid))
        //{

        //    SqlCommand command3 = new SqlCommand("INSERT INTO Tbl_Yorumlar (YorumAdSoyad, YorumMail, Yorumicerik, Yemekid) VALUES (@p1, @p2, @p3, @p4)", join.baglanti());
        //    command3.Parameters.AddWithValue("@p1", txtAdSoyad);
        //    command3.Parameters.AddWithValue("@p2", txtMail);
        //    command3.Parameters.AddWithValue("@p3", txtYorum);
        //    command3.Parameters.AddWithValue("@p4", ParsedYemekid);
        //    command3.ExecuteNonQuery();

        //    // Bağlantıyı kapat
        //    join.baglanti().Close();
        //    // Tarif ekledikten sonra textbox'ları temizle
        //    Temizle();

        //}

    }



    private void Temizle()
    {
        txtAdSoyad.Text = "";
        txtMail.Text = "";
        txtYorum.Text = "Yorum Yapınız..."; 
    }
}