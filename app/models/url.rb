class Url < ActiveRecord::Base

belongs_to :user
before_save :generate_short

  def generate_short
    self.short_url = ('a'..'z').to_a.shuffle.first(5).join
  end

  def increment_click_count

     self.click_count += 1
     self.save
  end

  def self.create_a_url(link,user_id)
    if user_id != 0
      Url.create(long_url: link, user_id: user_id)
    elsif user_id == 0
      Url.create(long_url: link, user_id: 0)
    end

  end

end

