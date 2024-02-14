using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkimizda : System.Web.UI.Page
{
    SqlClass join=new SqlClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("Select metin From Tbl_Hakkimizda", join.baglanti()); 
        SqlDataReader dr=command.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
        join.baglanti().Close();


    }
}