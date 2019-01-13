FactoryBot.define do
  factory :user do
    sequence(:faction_id) {1}
    sequence(:character) {|n| "spectre#{n}"}
    sequence(:title) {|n| "station#{n}"}
    sequence(:tagline) {|n| "summary#{n}"}
    sequence(:attendee) {|n| "person#{n}"}
    sequence(:email) { |n| "user#{n}@sampleTest.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
