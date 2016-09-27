class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provder: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provder = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.payloopscore = self.score(auth.info.name)
      user.save!
    end
  end

  def self.score(name)
    if name[0].ord.even? 
      rand(0..499)
    else
      rand(500..999)
    end
  end


 
end