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

require 'rails_helper'

RSpec.describe Appeal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
