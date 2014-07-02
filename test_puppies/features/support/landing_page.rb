require_relative '../../features/support/pages/side_menu_panel'

class LandingPage
  include PageObject
  include SideMenuPanel

  page_url 'http://puppies.herokuapp.com/admin'
end