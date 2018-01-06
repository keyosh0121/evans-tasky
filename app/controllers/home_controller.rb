class HomeController < ApplicationController
  def top
  end
  def west
    @direction = "west"
    render 'detail'
  end
  def east
    @direction = "east"
    render 'detail'
  end
  def reserve_east
    @direction = "east"
    render 'form'
  end
  def reserve_west
    @direction = "west"
    render 'form'
  end
  def reserve_east_send
    @direction = "east"
    dir_num = 0
    if params[:email] == params[:confirm]
    @reservation = Reservation.new(
      name: params[:name],
      email:params[:email],
      amount:params[:amount].to_i,
      message:params[:message],
      side:dir_num
      )
    if @reservation.save
      redirect_to('/')
    else
      render 'form'
    end
    end
  end
  def reserve_west_send
    @direction = "west"
    dir_num = 1
    if params[:email] == params[:confirm]
    @reservation = Reservation.new(
      name: params[:name],
      email:params[:email],
      amount:params[:amount].to_i,
      message:params[:message],
      side:dir_num
      )
    if @reservation.save
      redirect_to('/')
    else
      render 'form'
    end
    end
  end
end
