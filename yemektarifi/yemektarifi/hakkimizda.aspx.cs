using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class hakkimizda : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select *from Tbl_Hakkimizda", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
    }
}