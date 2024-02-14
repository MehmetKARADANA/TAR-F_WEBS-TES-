using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ServiceModel.ComIntegration;

public partial class Yorumlar : System.Web.UI.Page
{
    SqlClass join = new SqlClass();
    string idYorum = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            idYorum = Request.QueryString["idYorum"];
            islem = Request.QueryString["islem"];
        }

        Panel3.Visible = false;
        Panel4.Visible = false;
        //onaylı yorumlar
        SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Yorumlar Where YorumOnay=1",join.baglanti());
        SqlDataReader dr= command.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //oNAYSIZ yorumlar
        SqlCommand command2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar Where YorumOnay=0", join.baglanti());//burada dataliste çekmediğin birşeyyi veri bağlamada kulannamazsın
        SqlDataReader dr2 = command2.ExecuteReader();//datalist olmadan eval kullanamayız
        DataList2.DataSource = dr2;
        DataList2.DataBind();

        //yayından kaldır
        if (islem == "sil") {
            SqlCommand command3 = new SqlCommand("Update Tbl_Yorumlar Set YorumOnay=0 Where Yorumid=@p1", join.baglanti());
            command3.Parameters.AddWithValue("@p1", idYorum);
            command3.ExecuteNonQuery();
            Response.Write("Yorum Onay Kaldırıldı");
        }

    }

    protected void btnYemekVisible_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }

    protected void btnyemekNonvisible_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }

    protected void btnyemekNonvisible0_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnYemekVisible0_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

   
}