using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{

    SqlClass join = new SqlClass();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["kategoriid"];
            islem = Request.QueryString["islem"];
        }
      

        //

        Panel2.Visible = false;
        Panel4.Visible = false;
        SqlCommand command = new SqlCommand("Select * From Tbl_Kategoriler",join.baglanti());
        SqlDataReader dr= command.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        //

        if (islem == "sil")//buttonla veri aktaramadığımdan bunun önemini anladım
        {
            SqlCommand commandDelete = new SqlCommand("Delete From Tbl_Kategoriler where Kategoriid=@p1", join.baglanti());
            commandDelete.Parameters.AddWithValue("@p1", id);
            commandDelete.ExecuteNonQuery();
            // join.baglanti().Close();

        }
    }
    

    protected void btnKtgrVisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnKtgrNonvisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void btnktgekleVisible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void btnktgrekleNonvisible_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnKtgrEkle_Click(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values(@p1)",join.baglanti());
        command.Parameters.AddWithValue("@p1",txtKtgrAd.Text);
        command.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Kategori eklendi.");
        Panel4Temizle();
            }

    private void Panel4Temizle()
    {
        txtKtgrAd.Text = "";
    }
}
