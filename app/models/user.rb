class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  has_many :topics, dependent: :destroy
  mount_uploader :avatar, AvatarUploader


  def update_with_password(params, *options)
    if provider.blank?
      super
    else
      params.delete :current_password
      update_with_password(params, *options)
    end
  end
end
