using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yorumlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = false;

        //ONAYLI YORUMLAR
        SqlCommand komut = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        //onaysız yorumlar
        SqlCommand komut1 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
        SqlDataReader dr1 = komut1.ExecuteReader();
         DataList2.DataSource = dr1;
     DataList2.DataBind();




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
    }


    protected void Button2_Click1(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}