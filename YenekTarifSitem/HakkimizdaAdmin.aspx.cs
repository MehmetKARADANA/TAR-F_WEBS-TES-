using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    SqlClass join=new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (!IsPostBack) {

            SqlCommand command = new SqlCommand("Select metin FROM Tbl_Hakkimizda",join.baglanti());
            SqlDataReader dr= command.ExecuteReader();
            if (dr.Read())
            {
                txtHakkimizda.Text = dr[0].ToString();
            }
            join.baglanti();
        
        }
    



    }

    protected void btnPanel2Visible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void btnPanel2Nonvisible_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {//update
        SqlCommand command2 = new SqlCommand("Update Tbl_Hakkimizda set metin=@p1",join.baglanti());
        command2.Parameters.AddWithValue("@p1",txtHakkimizda.Text);
        command2.ExecuteNonQuery();
        join.baglanti().Close();
        Response.Write("Hakkimizda Güncellendi.");
    }
}