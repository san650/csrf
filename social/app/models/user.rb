class User < ActiveRecord::Base
  has_many :posts
  has_many :likes

  def self.authenticate(email, password)
    find_by email: email, password: password
  end
end
