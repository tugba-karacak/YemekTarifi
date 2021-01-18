using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Tarifler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel6.Visible = false;
        SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();


        SqlCommand komut1 = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=0", bgl.baglanti());
        SqlDataReader dr1 = komut1.ExecuteReader();
        DataList1.DataSource = dr1;
        DataList1.DataBind();



    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel6.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel6.Visible = false;
    }
}