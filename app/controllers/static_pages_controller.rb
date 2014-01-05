class StaticPagesController < ApplicationController
  def home
    #puts "Params is " + params[:controller_name]
    #puts params[:controller_name]
    #puts params[:controller_name]
    #puts params[:controller_name]
    #puts params[:controller_name]
    #puts params[:controller_name]
  end

  def about
  end

  def say_when
    render_text "<p>The time is <b>" + DateTime.now.to_s + "</b></p>"
  end
end
