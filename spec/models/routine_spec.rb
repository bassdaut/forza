require 'rails_helper'

RSpec.describe Routine, type: :model do
  fdescribe "associations" do
    it { is_expected.to belong_to(:trainer).class_name("User") }
    it { is_expected.to belong_to(:trainee).class_name("User") }
  end
end
