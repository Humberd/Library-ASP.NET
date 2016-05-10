using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library {
    public partial class BooksList : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:init(); ", true);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) {
            HttpContext context = HttpContext.Current;
            context.Items.Add("index", GridView1.SelectedIndex);
            GridView1.SelectedIndex = -1;
            Server.Transfer("BooksListDetails.aspx");
        }
    }
}