require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do 


    describe "validations" do 

        it { should validate_uniqueness_of(:username) }

        it {should validate_presence_of (:username) }

        it {should validate_presence_of (:password_digest) }

        it {should validate_presence_of (:session_token) }

        it { should validate_uniqueness_of (:session_token)}


        subject(:toby) { User.create(
        username: "Toby",
        password_digest: "password" ,
        session_token: SecureRandom::urlsafe_base64
    ) }
    end

    describe "associations" do
        it { should have_many(:goals) }
    end
    
    # describe "::find_by_credentials" do
    #     subject(:valid_user) { User.create(
    #     username: "Toby",
    #     password_digest: "password" ,
    #     session_token: SecureRandom::urlsafe_base64
    # ) }
    #     it "should return valid user"
    #         expect(User.find_by_credentials(valid_user.username, valid_user.password).to be (valid_user))
    # end


end
