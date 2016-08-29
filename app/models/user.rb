class User < ApplicationRecord
  scope :admins, -> { where(:is_admin => true ) } # User.admins
  scope :patients, -> { where(:is_admin => false) } # User.patients
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :email, :presence => true
  def is_admin?
    self.is_admin == true
  end

end
