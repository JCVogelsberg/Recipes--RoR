require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it has_and_belongs_to_many
end


describe Tag do
  it { should validate_presence_of :name }
end
