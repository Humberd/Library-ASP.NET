using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library {
    public partial class BooksListDetails : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                HttpContext context = HttpContext.Current;
                string index = context.Items["index"] + "";
                DetailsView1.PageIndex = (int)context.Items["index"];
            }

        }
    }
}