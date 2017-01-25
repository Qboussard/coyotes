FactoryGirl.define do
	factory :user do
		email
		password "12345678"
	end
	sequence :email do |n|
		"truc#{n}@laposte.net"
	end
end
