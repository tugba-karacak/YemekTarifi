using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

      string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];

        SqlCommand komut1 = new SqlCommand("select YemekAd from Tbl_Yemekler where YemekId=@t1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@t1", yemekid);
        SqlDataReader dr = komut1.ExecuteReader();


        while (dr.Read())
        {

            Label4.Text = dr[0].ToString();

        }
        bgl.baglanti().Close();
        //yorumları listeleme
        SqlCommand komut2 = new SqlCommand("select * from Tbl_Yorumlar where YemekId=@p2", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr1 = komut2.ExecuteReader();
        DataList3.DataSource = dr1;
        DataList3.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumIcerik,YorumMail,YemekId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txtadsoyad.Text);
        komut.Parameters.AddWithValue("@p2", txtyorum.Text);
        komut.Parameters.AddWithValue("@p3", txtmail.Text);
        komut.Parameters.AddWithValue("@p4", yemekid);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorumunuz Alınmıştır. TEŞEKKÜR EDERİZ (: ");
    }
}