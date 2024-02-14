using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class MesajDetay : System.Web.UI.Page
{
    string idMesaj = "";
    SqlClass join=new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        idMesaj = Request.QueryString["idMesaj"];

        SqlCommand command=new SqlCommand("Select MesajGonderen,MesajBaslik,Mesajicerik,MesajMail FROM Tbl_Mesajlar WHERE Mesajid=@p1", join.baglanti());
        command.Parameters.AddWithValue("@p1",idMesaj);
        SqlDataReader dr=command.ExecuteReader();
        if (dr.Read()) {
            TxtGonderen.Text = dr[0].ToString();
            TxtBaslik.Text= dr[1].ToString();
            TxtMesaj.Text= dr[2].ToString();
            TxtGondericiMail.Text= dr[3].ToString();
        
        }
        join.baglanti().Close();
            

    }
}