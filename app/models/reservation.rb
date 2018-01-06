class Reservation < ApplicationRecord
  validates :name, presence: {message: "氏名は必須項目です"}
  validates :email, presence: {message: "メールアドレスは必須項目です"}
  validates :amount, presence: {message: "ご予約人数は必須項目です"}
  def which
    if side == 0
      return "関東"
    else
      return "関西"
    end
  end
end
