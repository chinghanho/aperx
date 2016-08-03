# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  login           :string
#  email           :string
#  password_digest :string
#  remember_digest :string
#  role            :integer
#  reset_digest    :string
#  reset_sent_at   :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  describe "modules" do
    it { expect(described_class.included_modules).to include(Sortable) }
  end

end
