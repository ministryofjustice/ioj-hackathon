# == Schema Information
#
# Table name: appeals
#
#  id                :integer          not null, primary key
#  full_name         :string
#  dob               :date
#  solicitor_name    :string
#  provider_acct_num :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  grounds           :string
#

class Appeal < ActiveRecord::Base

  acts_as_gov_uk_date :dob

end
