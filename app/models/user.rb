class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
  self.inheritance_column = :type # STI ke liye type column use ho raha hai


  #enum role: { educator: "educator", student: "student", company: "company" }

  #validates :role, presence: true
end
