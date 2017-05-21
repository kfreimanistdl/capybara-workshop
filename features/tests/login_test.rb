class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def open_login_form_and_login_successfully
    @pages.page_home.success_login("auto_apimation@mailinator.com", "Parole12")
  end

  def login_is_successfull
    @pages.page_project.visible?("auto_apimation@mailinator.com", "Parole12")
  end

end
