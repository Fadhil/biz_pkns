require 'spec_helper'

describe Program do
  it { should have_and_belong_to_many(:consultants) }
end
