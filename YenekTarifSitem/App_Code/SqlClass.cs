using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// SqlClass için özet açıklama
/// </summary>
public class SqlClass
{
    public SqlConnection baglanti()
    {
        //SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-A593K9I;Initial Catalog=Dbo_yemektarifi;Integrated Security=;Encrypt=True;TrustServerCertificate=True;");
        //SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-A593K9I;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;Encrypt=False;");

        //baglan.Open();
        //return baglan;
        try
        { SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-A593K9I;Initial Catalog=Dbo_yemektarifi;Integrated Security=True;Encrypt=False;");

        baglan.Open();
        return baglan;
        }
       catch (Exception ex)
        {
           // Hata mesajını daha spesifik yapmak için ex.ToString() kullanabilirsiniz.
           Console.WriteLine("hata mesajııı");
           Console.WriteLine("Bağlantı oluşturulurken hata oluştu: " + ex.ToString());
           Console.WriteLine("hataaa");
          return null; // Hata durumunda null dönebilirsiniz veya başka bir işlem yapabilirsiniz.
        }
    }
}