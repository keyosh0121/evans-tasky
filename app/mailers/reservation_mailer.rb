class ReservationMailer < ApplicationMailer
  def reservation_verify_mail(reservation)
    @reservation = reservation
    west_or_east = "関西公演" if @reservation.side == 1
    west_or_east = "関東公演" if @reservation.side == 0
    mail(
      subject: "Tasky5 × Evans' blue #{west_or_east}ご予約ありがとうございます",
      to: @reservation.email,) do |format|
      format.html
    end
  end
end
