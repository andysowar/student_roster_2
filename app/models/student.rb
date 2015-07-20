class Student < ActiveRecord::Base
  PHONE_REGEX = /\A\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})\z/i
  EMAIL_REGEX = /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  validates :first_name, presence: true, length: { maximum:50 }
  validates :last_name, presence: true
  validates :address , presence: true
  validates :email, presence: true, uniqueness: true, format: { with: EMAIL_REGEX }
  validates :cell_phone, presence: true, format: { with: PHONE_REGEX }
  validates :work_phone, presence: true, format: { with: PHONE_REGEX }
  validates :home_phone, presence: true, format: { with: PHONE_REGEX }
end
