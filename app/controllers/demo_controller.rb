class DemoController < ApplicationController
  
  layout false
  
  def index
    # render('index')
  end

  def hello
    @array = [1, 2, 3]
    @id = params['id']
    @page = params[:page]
    # redirect_to(:controller => 'demo', :action => 'index')
  end

  def about
    render('about_us')
  end

  def contact_us
    @country = params[:country]
  end

  def contact
    if['us', 'ca'].include?(params[:country])
      @phone = 'ususus'
    elsif params[:country] == 'uk'
      @phone = 'ukukuk'
    else
      @phone = 'else'
    end
    render('contact_us_solution')
  end



end
