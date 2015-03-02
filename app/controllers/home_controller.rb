class HomeController < ApplicationController
  def get_visit_time
    @time=session[:visit_time]
    render(:text=>"Your last visit was #{@time}")
  end

  def set_visit_time
    #this is the landing (home) page. When the user visits, we want to remember when he/she visited

    session[:visit_time]=Time.now.to_s
    render(:text => "Welcome! We will remember your visit ..")
  end
end
