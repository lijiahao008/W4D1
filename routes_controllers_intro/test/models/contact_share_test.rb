# == Schema Information
#
# Table name: contact_shares
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#  contact_id :integer          not null
#

require 'test_helper'

class ContactShareTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
