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

require 'rails_helper'

RSpec.describe Solicitor, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
