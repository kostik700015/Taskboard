require 'rails_helper'
RSpec.describe Task, type: :model do
  let(:tasker) {Tasker.new(username: "Jack", about: "do mounting work" )}
  let(:tasker) {tasker.client_tasker.create(task_id: task.id)}
  let(:task) { Task.new(title: "Mount TV", )} 
  
  subject {task}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end