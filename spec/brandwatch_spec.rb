require 'coveralls'
Coveralls.wear!

require 'brandwatch'
require 'rspec'

describe Brandwatch do

  context "when called" do
    it "should be an instance of Module" do
      Brandwatch.should be_an_instance_of Module
    end
  end

end