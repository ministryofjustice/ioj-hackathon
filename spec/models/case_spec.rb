# == Schema Information
#
# Table name: cases
#
#  id              :integer          not null, primary key
#  maat_number     :integer
#  defendant_id    :integer
#  solicitor_id    :integer
#  offences        :string
#  court           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  appeal_date     :datetime
#  additional_info :string
#  grounds         :string
#

require 'rails_helper'

RSpec.describe Case, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
