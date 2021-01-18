using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=TK\SQLEXPRESS;initial catalog=dbo_yemektarifi;integrated security=True;");
        baglan.Open();
        return baglan;
    }
}