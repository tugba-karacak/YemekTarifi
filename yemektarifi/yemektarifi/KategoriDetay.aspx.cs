using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetayaspx : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string kategoriid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
       kategoriid= Request.QueryString["kategoriid"];
        SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where KategoriId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();

    }
}