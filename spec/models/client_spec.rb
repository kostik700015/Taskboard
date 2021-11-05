require 'rails_helper'
RSpec.describe Client, type: :model do
  subject { Client.new(username: "Jack" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a username" do
    subject.username=nil
    expect(subject).to_not be_valid
  end
  it "returns the correct username" do
    expect(subject.username).to eq("Jack")
  end
end