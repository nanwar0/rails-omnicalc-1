class PagesController < ApplicationController
  def home
    render({:template => "pages_templates/square_new"})
  end
  
  def square
    if params.fetch("status")=="new"
      render({:template => "pages_templates/square_new"})
    elsif params.fetch("status")=="results"
      @number = params.fetch("number").to_f
      @square = @number ** 2
      render({:template => "pages_templates/square_results"})
    end
  end
  
end
