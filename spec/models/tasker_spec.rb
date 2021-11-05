require 'rails_helper'
RSpec.describe Tasker, type: :model do
  subject { Tasker.new(username: "Jack", about: "do mounting work" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a username" do
    subject.username=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without about" do
    subject.about=nil
    expect(subject).to_not be_valid
  end
  it "returns the correct username" do
    expect(subject.username).to eq("Jack")
  end
  it "returns the correct about" do
    expect(subject.about).to eq("do mounting work")
  end
end