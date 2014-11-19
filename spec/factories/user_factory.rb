FactoryGirl.define do
	factory :a_user, class: User do
		email ""
		password ""
	end

	factory :a_list, class: List do
		name "grocery"
	end
end