require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
end


describe Tag do
  it { should validate_presence_of :name }
end
