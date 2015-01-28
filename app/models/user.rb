class User < ActiveRecord::Base

has_many :urls
  def self.authenticate(username, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil

    theguy = User.find_by_username(username)
    if theguy.password == password
      true
    else
      false
    end

  end



end
