# == Schema Information
#
# Table name: solicitors
#
#  id             :integer          not null, primary key
#  name           :string
#  account_number :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Solicitor < ActiveRecord::Base

  def details
    "#{account_number}: #{name}"
  end
end
