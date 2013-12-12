class User < ActiveRecord::Base

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["username"]
      user.email = auth["info"]["email"]
      user.image = auth["info"]["image"]
      user.balance = auth["info"]["balance"]
      user.first_name = auth["extra"]["raw_info"]["first_name"]
      user.last_name = auth["extra"]["raw_info"]["last_name"]
    end
  end

end
