class Appeal < ActiveRecord::Base

  acts_as_gov_uk_date :dob

end
