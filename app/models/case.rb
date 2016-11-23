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

class Case < ActiveRecord::Base

  serialize :offences, Array

  belongs_to :defendant
  belongs_to :solicitor

  def appeal_date_for_display
    appeal_date.strftime('%d %b %H:%M')
  end

end
