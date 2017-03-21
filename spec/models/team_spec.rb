require 'rails_helper'

describe Team do
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:rank) }
  it { should validate_presence_of(:match_up) }
  it { should validate_presence_of(:group) }
  
  it { should validate_inclusion_of(:match_up).in_range(1..16) }
  it { should validate_inclusion_of(:group).in_array(['a', 'b', 'A', 'B']) }
 
end