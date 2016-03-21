require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { FactoryGirl.build(:project) }

  it 'has a valid factory' do
    expect(FactoryGirl.create(:project)).to be_valid
  end

  describe 'name' do
    it 'has to be specified' do
      expect(FactoryGirl.build(:project, name: nil)).not_to be_valid
    end

    it 'must be short enough' do
      expect(FactoryGirl.build(:project, name: "blablo" * 10)).not_to be_valid
    end

    it 'has to be unique' do
      FactoryGirl.create(:project, name: "my project")
      expect(FactoryGirl.build(:project, name: "my project")).not_to be_valid
    end
  end

  describe 'description' do
    it 'has to be specified' do
      expect(FactoryGirl.build(:project, description: nil)).not_to be_valid
    end

    it 'must be short enough' do
      expect(FactoryGirl.build(:project, description: "long description" * 20)).not_to be_valid
    end
  end

  describe 'amount' do
    it 'has to be specified' do
      expect(FactoryGirl.build(:project, amount: nil)).not_to be_valid
    end

    it 'must be positif' do
      expect(FactoryGirl.build(:project, amount: -3)).not_to be_valid
    end
  end

  it 'is invalid without a category' do
    expect(FactoryGirl.build(:project, category: nil)).not_to be_valid
  end

  it 'is invalid without a location' do
    expect(FactoryGirl.build(:project, location: nil)).not_to be_valid
  end

  it "can access category's name" do
    expect(project).to respond_to(:category_name)
  end

  it "can access it's location details" do
    expect(project).to respond_to(:location_short)
  end
end
