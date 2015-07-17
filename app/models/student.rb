class Student < ActiveRecord::Base
  validates :first_name, presence: true, length: { maximum:50 }
  validates :last_name, presence: true
  validates :address , presence: true
  validates :email, presence: true, uniqueness: true
  validates :cell_phone, presence: true
  validates :work_phone, presence: true
  validates :home_phone, presence: true
end
