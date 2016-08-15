class User < ActiveRecord::Base
  has_many :fxrequest, {class_name: "Fxtran", foreign_key: :requestor_id}
  has_many :fxaccepts, {class_name: "Fxtran", foreign_key: :acceptor_id}

  class << self
    def from_omniauth(auth_hash)
      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
      user.name = auth_hash['info']['name']
      user.location = auth_hash['info']['location']
      user.image_url = auth_hash['info']['image']
      user.url = auth_hash['info']['urls'][user.provider.capitalize]
      user.save!
      user
    end

  end

end