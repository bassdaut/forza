require 'rails_helper'

RSpec.describe User, type: :model do
  fdescribe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:surname) }
    it { is_expected.to validate_presence_of(:role) }
  end
end
