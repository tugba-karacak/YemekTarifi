using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";
    //string kid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Page.IsPostBack == false)
        {
            //kid = Request.QueryString["KategoriId"];
            id = Request.QueryString["YemekId"];
            islem = Request.QueryString["islem"];
        }


        Panel2.Visible = false;
        Panel4.Visible = false;
     
        //YEMEK LİSTELEME
        SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        //KATEGORİ LİSTESİ
        if (Page.IsPostBack == false)
        {
            SqlCommand komut2 = new SqlCommand("select *from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriId";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

            //yemek silme
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where YemekId=@p1", bgl.baglanti());

                komutsil.Parameters.AddWithValue("@p1",id);
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();


               // kategori sayısını azaltma
                SqlCommand komutt = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where KategoriId=@k1", bgl.baglanti());
                komutt.Parameters.AddWithValue("@k1", id);
                komutt.ExecuteNonQuery();
                bgl.baglanti().Close();

            }


        }


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
    //kategori ekleme
    protected void btnekle0_Click(object sender, EventArgs e)
    {
        SqlCommand komut3 = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        //kategori sayısını arttırma

        SqlCommand komut1 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}