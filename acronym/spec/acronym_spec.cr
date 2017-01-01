require "spec"
require "../src/*"

describe "Acronym" do
  it "does basic" do
    Acronym.abbreviate("Portable Network Graphics").should eq("PNG")
  end

  it "does lowercase words" do
    Acronym.abbreviate("Ruby on Rails").should eq("ROR")
  end

  it "does camelcase" do
    Acronym.abbreviate("HyperText Markup Language").should eq("HTML")
  end

  it "does punctuation" do
    Acronym.abbreviate("First In, First Out").should eq("FIFO")
  end

  it "does all caps words" do
    Acronym.abbreviate("PHP: Hypertext Preprocessor").should eq("PHP")
  end

  it "does non-acronym all caps word" do
    Acronym.abbreviate("GNU Image Manipulation Program").should eq("GIMP")
  end

  it "does hyphenated" do
    Acronym.abbreviate("Complementary metal-oxide semiconductor").should eq("CMOS")
  end
end
