# == Schema Information
#
# Table name: sessions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Session < ActiveRecord::Base
  belongs_to :user

  before_save :set_code

  private
  def set_code
    self.code = SecureRandom.urlsafe_base64 if self.code.blank?
  end
end
