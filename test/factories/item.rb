FactoryGirl.define do
  factory :item do
    name 'item name'
    properties { {color: 'blue'} }
  end
end