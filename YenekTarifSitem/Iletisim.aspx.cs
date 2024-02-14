using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Iletisim : System.Web.UI.Page
{

    SqlClass join = new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("insert into Tbl_Mesajlar (MesajBaslik,MesajMail,Mesajicerik,MesajGonderen) values (@p1,@p2,@p3,@p4)", join.baglanti()) ;
        command.Parameters.AddWithValue("@p1",txtKonu.Text);
        command.Parameters.AddWithValue("@p2",txtMail.Text);
        command.Parameters.AddWithValue("@p3", txtMesaj.Text);
        command.Parameters.AddWithValue("@p4",txtAdSoyad.Text);
        command.ExecuteNonQuery();
        join.baglanti().Close();

        Response.Write("Mesajınız alındı...");

        Temizle();
    }


    private void Temizle()
    {
        txtKonu.Text = "";
        txtMail.Text = "";
        txtMesaj.Text = "";
        txtAdSoyad.Text = "";
      
    }
}