FactoryBot.define do
    factory :user do
        name { "Feliks" }
        email { "feliks@craft.se" }
        password { "password" }
        password_confirmation { "password" }
    end
end