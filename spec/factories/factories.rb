FactoryGirl.define do
  factory :user do
    username("andy jax")
    email("yoyo@whatup.com")
    password("p4ssw0rd")
    password_confirmation("p4ssw0rd")
  end

  factory :blub do
    content("Look at me!")
    user
  end
end
