class Case < ActiveRecord::Base

  serialize :offences, Array

  belongs_to :defendant
  belongs_to :solicitor

end
