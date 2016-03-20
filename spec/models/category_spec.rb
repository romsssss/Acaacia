require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'name' do
    it 'has to be specified' do
      expect(FactoryGirl.build(:category, name: nil)).not_to be_valid
    end

    it 'must be short enough' do
      expect(FactoryGirl.build(:category, name: "blablo" * 10)).not_to be_valid
    end

    it 'has to be unique' do
      FactoryGirl.create(:category, name: "my category")
      expect(FactoryGirl.build(:category, name: "my category")).not_to be_valid
    end
  end
end
