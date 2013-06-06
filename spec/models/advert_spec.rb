require 'spec_helper'

describe Advert do
  it { should respond_to(:content) }
  it { should respond_to(:title) }
  it { should respond_to(:start_date) }
  it { should respond_to(:end_date) }
  it { should respond_to(:active) }
  it { should respond_to(:paid_for) }
end
