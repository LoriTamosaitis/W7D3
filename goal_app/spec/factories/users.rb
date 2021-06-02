FactoryBot.define do 
    factory :user do 
        username { Faker::JapaneseMedia::OnePiece.character } 
        password { "password" }
    end 
end 