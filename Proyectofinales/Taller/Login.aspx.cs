﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-NRAK6GG\\SQLEXPRESS;Initial Catalog=Proyecto_SoftwareII;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Usuario where Usuario='" + TextBox1.Text + "'and contrasena ='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Response.Redirect("Clientes.aspx");
            }
            else
            {
                Label1.Visible = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuario.aspx");
        }
    }
}