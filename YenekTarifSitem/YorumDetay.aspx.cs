using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    string Yorumid="";
    SqlClass join = new SqlClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        Yorumid = Request.QueryString["idYorum"];//join kullandık
        SqlCommand command = new SqlCommand("SELECT YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid Where Yorumid=@p1",join.baglanti());
        command.Parameters.AddWithValue("@p1",Yorumid);
        SqlDataReader dr = command.ExecuteReader();
        if (dr.Read()) {

            txtAdSoyad.Text = dr[0].ToString();
            TxtMail.Text = dr[1].ToString();
            Txticerik.Text = dr[2].ToString();
            TxtYemek.Text = dr[3].ToString();

        }
        join.baglanti().Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand command2 = new SqlCommand("Update Tbl_Yorumlar SET YorumOnay=1 Where Yorumid=@t1",join.baglanti());
        command2.Parameters.AddWithValue("@t1",Yorumid);
        command2.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Yorum Onaylandı...");
    }

    protected void txtYorumlaraDon_Click(object sender, EventArgs e)
    {
        Response.Redirect("Yorumlar.aspx");//Response.redirect html hrefler olmadan 
    }
}