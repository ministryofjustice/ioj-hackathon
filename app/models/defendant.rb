class Defendant < ActiveRecord::Base

  has_many :cases

  def name
    "#{last_name}, #{first_name}"
  end

  def date_of_birth
    dob.strftime('%d %b %Y')
  end


end