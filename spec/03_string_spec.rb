
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String" do
      "String".should eq 'String'
    end
    
    it "can contain bare single-quote (') characters" do
      "single-quote".should eq 'single-quote'
    end
    
    it "allow the escape of double quote (\") characters" do
      "double quote".should eq 'double quote'
    end
    
    it "allow interpolation (Ruby code within the string)" do
      "Ruby code".should eq 'Ruby code'
    end
    
    it "replace \t with a tab character" do
     "tab character".should eq 'tab character'
    end

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE" do
      "ESCAPE SEQUENCE".should eq 'ESCAPE SEQUENCE'
    end

    it "replaceS special characters when values are specified at the end via '% [value]'" do
      
      "special characters".should eq 'special characters'
      
    end
  end
  


  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
   end
    
    it "are of class String" do
      "String".should eq 'String'
    end
    
    it "allow double-quote (\") characters" do
      "double quote".should eq 'double quote'
    end

    it "allow the escape of single quote (') characters" do
      "single-quote".should eq 'single-quote'
    end
    
    it "does not interpolate Ruby code" do
      "Ruby code".should eq 'Ruby code'
    end
    
    it "does not escape newline characters" do
      'newline character'.should eq 'newline character'
    end
    
  end
  

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}" do
      
    end
    

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string" do
      
    end

  end
end