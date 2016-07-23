require 'rails_helper'

RSpec.describe User, type: :model do

  describe "modules" do
    it { expect(described_class.included_modules).to include(Sortable) }
  end

end
