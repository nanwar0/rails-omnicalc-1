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
  
  def sqrt
    if params.fetch("status")=="new"
      render({:template => "pages_templates/sqrt_new"})
    elsif params.fetch("status")=="results"
      @number = params.fetch("number").to_f
      @sqrt = @number ** 0.5
      render({:template => "pages_templates/sqrt_results"})
    end
  end

  def random
    if params.fetch("status")=="new"
      render({:template => "pages_templates/random_new"})
    elsif params.fetch("status")=="results"
      @minimum = params.fetch("user_min").to_f
      @maximum = params.fetch("user_max").to_f
      @result = rand(@minimum..@maximum)
      render({:template => "pages_templates/random_results"})
    end
  end

  def payment
    if params.fetch("status")=="new"
      render({:template => "pages_templates/payment_new"})
    elsif params.fetch("status")=="results"
      @apr = params.fetch("user_apr").to_f
      @years = params.fetch("user_years").to_f
      @r = params.fetch("user_apr").to_f/100/12
      @n = params.fetch("user_years").to_f*12
      @pv = params.fetch("user_pv").to_f
      @p = (@r*@pv)/(1-(1+@r)**(-@n))
      render({:template => "pages_templates/payment_results"})
    end
  end

end
