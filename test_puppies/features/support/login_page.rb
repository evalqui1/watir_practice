class LoginPage
  include PageObject

  page_url "http://puppies.herokuapp.come/admin"

  text_field(:username, :id => 'name')
  text_field(:password, :id => 'password')
  button(:login, :value => 'Login')

  def login_to_system(username='admin', password='password')
    self.username = username
    self.password = password
    login
  end



end 