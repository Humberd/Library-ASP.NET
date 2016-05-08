using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library {
    public partial class OrderForm_Part1 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void OrderFormPart1Button_Click(object sender, EventArgs e) {
            OrderForm.ActiveViewIndex = 1;
        }

        protected void OrderFormPart2Button_Click(object sender, EventArgs e) {
            OrderForm.ActiveViewIndex = -1;
            OrderSummary.ActiveViewIndex = 0;
        }

        protected void OrderFormPart2Back_Click(object sender, EventArgs e) {
            OrderForm.ActiveViewIndex = 0;
        }

        protected void name_TextChanged(object sender, EventArgs e) {
            NameSummary.Text = name.Text;
        }

        protected void surname_TextChanged(object sender, EventArgs e) {
            SurnameSummary.Text = surname.Text;
        }

        protected void email_TextChanged(object sender, EventArgs e) {
            EmailSummary.Text = email.Text;
        }

        protected void phone_TextChanged(object sender, EventArgs e) {
            PhoneSummary.Text = phone.Text;
        }

        protected void address_TextChanged(object sender, EventArgs e) {
            AddressSummary.Text = address.Text;
        }
    }
}