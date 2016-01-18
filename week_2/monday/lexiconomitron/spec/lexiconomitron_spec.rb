require_relative("../lib/Lexiconomitron.rb")

describe Lexiconomitron do 
		before :each do 
  		@lexi = Lexiconomitron.new
  	end
 	  
 	  describe "#eat_t" do 
    it "removes every letter t from the input" do
     
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
    end
  end
  

  describe "Shazam" do 
  	
  	it "Reverses each word in an array" do 
  		expect(@lexi.shazam(["there","was","a","big","differential"])).to eq(["ereh", "lainereffid"])
  	end
  end
  describe " oompa_loompa" do 
  	it "returns words less than 3 letters" do 
  		expect(@lexi.oompa_loompa(["there","wat","at","bit","differential"])).to eq(["wa", "a", "bi"])
  	end

  end


end
