using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace work4.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        string[] rolesArray;
        MembershipUserCollection users;
        protected void Page_Load(object sender, EventArgs e)
        {
            Msg.Text = "";

            if (!IsPostBack)
            {
                // Bind roles to ListBox.

                rolesArray = Roles.GetAllRoles();
                RolesListBox.DataSource = rolesArray;
                RolesListBox.DataBind();

                // Bind users to ListBox.

                users = Membership.GetAllUsers();
                UsersListBox.DataSource = users;
                UsersListBox.DataBind();
            }
        }

        protected void AddUser_OnClick(object sender, EventArgs e)
        {
            // Verify that a user and a role are selected.

            if (UsersListBox.SelectedItem == null)
            {
                Msg.Text = "Please select a user.";
                return;
            }

            if (RolesListBox.SelectedItem == null)
            {
                Msg.Text = "Please select a role.";
                return;
            }

            // Add the user to the selected role.

            try
            {
                Roles.AddUserToRole(UsersListBox.SelectedItem.Value, RolesListBox.SelectedItem.Value);
                Msg.Text = "User added to Role.";
            }
            catch (Exception ex)
            {
                Msg.Text = ex.Message;
            } 
        }
    }
}
