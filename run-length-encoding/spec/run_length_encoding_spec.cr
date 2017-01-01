require "spec"
require "../src/*"

describe "RunLengthEncoding" do
  it "encode empty string" do
    RunLengthEncoding.encode("").should eq("")
  end

  it "encode single characters only" do
    RunLengthEncoding.encode("XYZ").should eq("XYZ")
  end

  it "decode empty string" do
    RunLengthEncoding.decode("").should eq("")
  end

  it "decode single characters only" do
    RunLengthEncoding.decode("XYZ").should eq("XYZ")
  end

  it "encode simple" do
    RunLengthEncoding.encode("AABBBCCCC").should eq("2A3B4C")
  end

  it "decode simple" do
    RunLengthEncoding.decode("2A3B4C").should eq("AABBBCCCC")
  end

  it "encode with single values" do
    RunLengthEncoding.encode("WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB").should eq("12WB12W3B24WB")
  end

  it "decode with single values" do
    RunLengthEncoding.decode("12WB12W3B24WB").should eq("WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB")
  end
end
