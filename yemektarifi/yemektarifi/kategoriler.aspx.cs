using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class kategoriler : System.Web.UI.Page
{
    sqlsinif baglan = new sqlsinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["KategoriId"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komut = new SqlCommand("select *from Tbl_Kategoriler", baglan.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        // silme işlemi
        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from Tbl_Kategoriler where KategoriId=@p1", baglan.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            baglan.baglanti().Close();
        }



        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnekle_Click(object sender, EventArgs e)
    {
        SqlCommand komut1 = new SqlCommand("insert into Tbl_Kategoriler(KategoriAd,KategoriResim) values (@p1,@p2)", baglan.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p2", FileUpload1.FileName);
        komut1.ExecuteNonQuery();
        baglan.baglanti().Close();
    }
}