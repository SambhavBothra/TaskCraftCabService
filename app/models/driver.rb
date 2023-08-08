class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "encrypted_password", "id", "remember_created_at", "reset_password_sent_at", "reset_password_token", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    []
  end

  def set_default_sttus
    self.status= "pending"
  end
  def self.ransackable_attributes(auth_object = nil)
    super + ['status']
  end

  # has_many_attached :documents

  # def self.ransackable_associations(auth_object = nil)
  #   ["documents_attachments", "documents_blobs"]
  # end
end
