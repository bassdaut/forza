require 'rails_helper'

RSpec.describe User, type: :model do
  fdescribe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:surname) }
    it { is_expected.to validate_presence_of(:role) }
  end

  fdescribe "associations" do
    it { is_expected.to have_many(:routines)  }
    it { is_expected.to have_many(:managed_routines)  }
  end
end
