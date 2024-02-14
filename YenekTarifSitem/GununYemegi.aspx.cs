using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{

    SqlClass join = new SqlClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Yemekler Where Yemekdurum=1", join.baglanti());
        SqlDataReader read = command.ExecuteReader();
        DataList2.DataSource = read;//veri kaynağın read 
        DataList2.DataBind();
    }
}