using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
   
        id = Request.QueryString["YemekId"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YemekId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));
        SqlCommand komut1 = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2, YemekTarif=@p4, KategoriId=@p5, YemekResim=@p6 where YemekId=@p3", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut1.Parameters.AddWithValue("@p4", TextBox3.Text);
        komut1.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut1.Parameters.AddWithValue("@p6", "~/Resimler/"+FileUpload1.FileName);
        komut1.Parameters.AddWithValue("@p3", id);
     
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {


        //GÜNÜN YEMEGİNİ FALSE YAPTIK.
        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set Durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        //GÜNÜN YEMEGİNİ SEÇME IDYE GÖRE


        SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set Durum=1 where YemekId=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}