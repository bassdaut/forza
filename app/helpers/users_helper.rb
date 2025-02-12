module UsersHelper
  def options_for_roles
    User.roles.keys.map { |role| [ role.humanize, role ] }
  end
end
