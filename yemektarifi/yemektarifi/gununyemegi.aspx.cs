using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class gununyemegi : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select *from Tbl_Yemekler where Durum=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
    }
}