require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do 


    describe "validations" do 

        it { should validate_uniqueness_of(:username) }

        it {should validate_presence_of (:username) }

        it {should validate_presence_of (:password_digest) }

        it {should validate_presence_of (:session_token) }

        it { should validate_uniqueness_of (:session_token)}

        # subject(:toby) { User.create (
        #     username: "Toby",
        #     password_digest: "12345",
        #     session_token: "8907"
        # ) }

        subject(:toby) { User.create(
        username: "Toby",
        # email: "toby@gmail.com",
        # age: 5,
        # political_affiliation: "Hufflepuff",
        password_digest: "password" ,
        session_token: "8907"
    ) }

    end 





end
