# == Schema Information
#
# Table name: defendants
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  dob        :date
#

class Defendant < ActiveRecord::Base

  has_many :cases

  def name
    "#{last_name}, #{first_name}"
  end

  def date_of_birth
    dob.strftime('%d %b %Y')
  end

  def details
    "#{name} (DOB: #{date_of_birth})"
  end

end
