require 'spec_helper'

describe Consultant do
  it { should have_and_belong_to_many(:programs) }
end
