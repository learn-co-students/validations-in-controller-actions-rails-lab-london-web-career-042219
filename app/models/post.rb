class Post < ActiveRecord::Base
  validates :title, presence: true # , message: 'name please!'
  validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
  validates :content, length: { minimum: 100 }
end
