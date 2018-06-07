class AuthenticateAdmin
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    [JsonWebToken.encode(admin_id: admin.id), admin.email] if admin
  end

  private

  attr_accessor :email, :password

  def user
    admin = Admin.find_by_email(email)
    return admin if admin && admin.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'

    nil
  end
end