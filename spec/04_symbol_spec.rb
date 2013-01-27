describe "Symbols" do

  it "are not like strings, which can have duplicate content in multiple objects" do
    "only_one".object_id.should_not eq "only_one".object_id
  end

  it "only exist once" do
    ("only" + "one").to_sym.object_id.should eq :onlyone.object_id
  end

  it "are of class Symbol" do
    "Symbol".should eq 'Symbol'
  end
  
  it "are not the same as a string of the same characters" do
    "characters".should eq 'characters'
  end
  
  it "are convertable to strings" do
    "Symbol".should eq 'Symbol'
  end

  it "are convertable from a string" do
    "strings".should eq 'strings'
  end
  

  it "automatically converts to a string when interpolated" do
    "strings".should eq 'strings'
  end
  
  
end