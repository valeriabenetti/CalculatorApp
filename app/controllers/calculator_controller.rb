class CalculatorController < ApplicationController
  def index
  end

  def calculate
    @first_number = params[:first_number].to_f
    @second_number = params[:second_number].to_f
    @operator = params[:operator]

    @result = case @operator
              when '+' then @first_number + @second_number
              when '-' then @first_number - @second_number
              when '*' then @first_number * @second_number
              when '/' then @second_number != 0 ? @first_number / @second_number : 'Error: Division by zero'
              else 'Invalid operation'
              end
    
    render :index
  end
end
