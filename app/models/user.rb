class User < ApplicationRecord
  # adds methods to authenticate against a bcrypt password. It's this mechanism
  # that requires us to have a password_digest attribute.
  # encrypt password
  has_secure_password

  has_many :todos, foreign_key: :created_by
  validates_presence_of :name, :email, :password_digest
end
