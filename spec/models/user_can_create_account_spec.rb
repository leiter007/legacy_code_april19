require 'rails_helper'

RSpec.describe User, type: :model do
    describe "User" do
        it "should have valid name" do
            user = User.new(name: "")
            expect(user.name.should eq "Noel")
        end
    end
end