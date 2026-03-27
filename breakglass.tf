resource "azuread_user" "breakglass" {
  user_principal_name = "breakglass@yourtenant.onmicrosoft.com"
  display_name        = "Break Glass Admin"
  password            = "A_Strong_Temporary_Password123!"
  force_password_change = false
}

resource "azuread_directory_role_assignment" "global_admin" {
  role_id             = data.azuread_directory_role.global_admin.id
  principal_object_id = azuread_user.breakglass.id
}

data "azuread_directory_role" "global_admin" {
  display_name = "Global Administrator"
}
