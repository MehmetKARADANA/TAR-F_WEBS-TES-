using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlClass join=new SqlClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand command = new SqlCommand("SELECT * FROM Tbl_Kategoriler",join.baglanti());
        SqlDataReader read = command.ExecuteReader();
        DataList1.DataSource = read;//veri kaynağın read 
        DataList1.DataBind(); 
    }

}
