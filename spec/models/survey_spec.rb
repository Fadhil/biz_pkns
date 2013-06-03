require 'spec_helper'

describe Survey do
  describe 'has got the right stuff' do
    it { should respond_to(:title) }
  end
  it { should have_and_belong_to_many(:users) }
  it { should have_many(:questions)}
end