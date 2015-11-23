require 'test_helper'

class MovieTest < ActiveSupport::TestCase
 


should belong_to(:event)
should have_many(:votes)

should validate_presence_of(:title)

should validate_presence_of(:url)

end
