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

class ContactShare < ActiveRecord::Base
  validates :user_id, :contact_id, presence: true
  validates :contact_id, uniqueness: { scope: :user_id }

  belongs_to :user

  belongs_to :contact

end
