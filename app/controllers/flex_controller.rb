class FlexController < ApplicationController
  def home
  end
  def squarer
    @number=params.fetch("number").to_f
    @square=@number*@number
    render({ :template => "squarer"})
  end
  def square_rootr
    @number=params.fetch("user_number").to_f
    @squareroot=Math.sqrt(@number)
    render({ :template => "square_rootr"})
  end
  def paymentr
    @apr=params.fetch("user_apr").to_f
    @years=params.fetch("user_years").to_f
    @pv=params.fetch("user_pv").to_f
    r = @apr/100/12
    @pmt = (@pv * r) / (1 - (1 + r) ** -(@years*12))
    render({ :template => "paymentr"})
  end
  def randomr
    @min=params.fetch("user_min").to_f
    @max=params.fetch("user_max").to_f
    @output=rand(@min...@max)
    render({ :template => "randomr"})
  end
  def square
    render({ :template => "square"})
  end
  def square_root
    render({ :template => "square_root"})
  end
  def payment
    render({ :template => "payment"})
  end
  def random
    render({ :template => "random"})
  end
end
