using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["TarifId"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Tarifler where TarifId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();




            while (dr.Read())
            {


                txttarifad.Text = dr[1].ToString();
                txtmalzemeler.Text = dr[2].ToString();
                txtyapilis.Text = dr[3].ToString();
                //  FileUpload1. = dr[4].ToString();
                txttarifoneren.Text = dr[5].ToString();
                txtmail.Text = dr[6].ToString();



            }
            bgl.baglanti().Close();

            //kategori listesi
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select *from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }
    //güncelleme
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where TarifId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        //yemegi anasayfaya ekle 
        SqlCommand komut1 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme, YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", txttarifad.Text);
        komut1.Parameters.AddWithValue("@p2", txtmalzemeler.Text);
        komut1.Parameters.AddWithValue("@p3", txtyapilis.Text);
        komut1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}
