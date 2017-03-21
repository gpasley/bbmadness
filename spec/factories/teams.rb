FactoryGirl.define do
  factory :team do
    name     'Name'
    url      'http://example.com'
    rank     1
    group    'A'
    loss_yn  false
    match_up 1
  end
end