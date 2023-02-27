class ApplicationController < ActionController::Base

  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({:template =>"calculation_templates/square_results.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @result = rand(@lower..@upper)
      render({ :template =>"calculation_templates/rand_results.html.erb"})
  end

  def calculate_random_new
    render({:template =>"calculation_templates/random_new.html.erb"})
  end

  def calculate_root_new
    render({:template =>"calculation_templates/root_new.html.erb"})
  end
  
  def calculate_payment_new
  
     render({:template =>"calculation_templates/payment_new.html.erb"})
  end

  def calculate_payment_results
      @apr=params.fetch("user_apr").to_f.round(4)
      @years=params.fetch("user_years").to_i
      @pv=params.fetch("user_pv").to_f.round(2)
      @done= @apr * (1 + @apr ) **  @years
      @done=(1 + @apr) ** @years - 1
      @years=(@done * @done / @done)
      render({:template =>"calculation_templates/payment_results.html.erb"})
  end

  def calculate_root_results
    @num = params.fetch("user_number").to_f
    @square_of_num = @num ** 0.5
    render({:template =>"calculation_templates/root_results.html.erb"})
  end
end

#numerator = monthly_interest_rate * (1 + monthly_interest_rate) ** total_payments
#denominator = (1 + monthly_interest_rate) ** total_payments - 1
#monthly_payment = (principal * numerator / denominator)
