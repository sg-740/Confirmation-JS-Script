using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Confirmation_JS_Script
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool validate = validateform();
            if (validate)
            {
                Label1.Text = "Congratulation Coders Page Is Submitted To The Server";
            }
        }
        public bool validateform()
        {
            if (string.IsNullOrEmpty(TextBox1.Text.ToString()))
            {
                Label1.Text="Please Input Username First!";
                Response.Write("<script>alert('Please Input Username First!')</script>");
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}