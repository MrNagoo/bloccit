require 'rails_helper'

 RSpec.describe Rating, type: :model do
 # #1
   it { should have_many :ratings }
 # #2
   it { should have_many(:topics) }
   it { should have_many(:posts) }

 end
