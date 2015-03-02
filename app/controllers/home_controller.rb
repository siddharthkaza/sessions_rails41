class HomeController < ApplicationController
  def get_visit_time
    @time=session[:visit_time]
    if @time.nil?
      render(:text=>"Oops! I got no cookie from your browser! Did you clear it?")
    else
      render(:text=>"Your last visit was #{@time}")
    end
  end

  def set_visit_time
    #this is the landing (home) page. When the user visits, we want to remember when he/she visited

    session[:visit_time]=Time.now.to_s
    render(:text => "Welcome! We will remember your visit ..")
  end
end
