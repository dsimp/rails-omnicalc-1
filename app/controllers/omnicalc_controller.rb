class OmnicalcController < ApplicationController
  def two
    
    render({ :template => "view_templates/square"})
  end

  def square_result
    @number = params.fetch("user_number").to_f
    @the_result = @number ** 2
    render({ :template => "view_templates/square_result"})
  end

  def square_root_new

    render({ :template => "view_templates/square_root_new"})
  end

  def square_root_result
    @number_square = Math.sqrt(params.fetch("user_square_root").to_f)

    render({ :template => "view_templates/square_root_result"})
  end

  def payment_new

    render({ :template => "view_templates/payment"})
  end

  def payment_result

    @r = (params.fetch("user_APR").to_f/100)/12
    @rate = @r.to_fs(:percentage, { :precision => 4 } )
    @n = params.fetch("user_years").to_i * 12
    @numerator = @r * params.fetch("user_present").to_f
    @denominator = 1 - (1 + @r)**-@n
    @pay = (@numerator/@denominator).to_fs(:currency)
    render({ :template => "view_templates/payment_result"})
  end

  def random_new

    render({ :template => "view_templates/random"})
  end

  def random_result
    @min = params.fetch("minimum").to_i
    @max = params.fetch("maximum").to_i
    @rando = rand(@min..@max).to_f

    render({ :template => "view_templates/random_result"})
  end
end
