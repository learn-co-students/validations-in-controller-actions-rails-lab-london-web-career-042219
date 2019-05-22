class Author < ActiveRecord::Base
  validates :name, presence: true # , message: 'name please!'
  validates :email, uniqueness: true
end
