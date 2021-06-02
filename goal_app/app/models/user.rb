class User < ApplicationRecord
    validates :username  , presence: true, uniqueness: true
    validates :password_digest  , presence: true
    validates :session_token  , presence: true, uniqueness: true

    has_many :goals,
        class_name: :Goal,
        foreign_key: :user_id,
        primary_key: :id
end 