class Solicitor < ActiveRecord::Base

  def details
    "#{account_number}: #{name}"
  end
end
