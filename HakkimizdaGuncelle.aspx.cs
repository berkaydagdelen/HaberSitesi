using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HakkimizdaGuncelle : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {



        if (Page.IsPostBack == false)
        {

            DataSetTableAdapters.Tbl_hakkimizdaTableAdapter dt = new DataSetTableAdapters.Tbl_hakkimizdaTableAdapter();
            TxtHakkimzida.Text = dt.Hakkimizda()[0].hakkimizda;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        FileUpload1.SaveAs(Server.MapPath("/HaberSitesi/newsfeed/images/" + FileUpload1.FileName));

        DataSetTableAdapters.Tbl_hakkimizdaTableAdapter dt = new DataSetTableAdapters.Tbl_hakkimizdaTableAdapter();
        dt.HakkmizidaGuncelle(TxtHakkimzida.Text, "/HaberSitesi/newsfeed/images/" + FileUpload1.FileName);

        
        Response.Redirect("AdminHakkimizda.aspx");


    }
}