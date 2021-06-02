class Goal < ApplicationRecord

    validates :body, presence: true
    validates :public, presence: true
    validates :ongoing, presence: true
    validates :user_id, presence: true


    belongs_to :user,
        class_name: :User,
        foreign_key: :user_id,
        primary_key: :id

        
end