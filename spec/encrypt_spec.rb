require_relative "../encrypt"

describe "#encrypt" do
  it "returns the 3-letter left shift from a text" do
    text = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(text).to eq(expected)
  end

  it "returns an empty string when an empty string is passed" do
    text = encrypt("")
    expected = ""
    expect(text).to eq(expected)
  end
end
