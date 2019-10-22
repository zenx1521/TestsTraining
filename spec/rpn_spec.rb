require 'rpn'

RSpec.describe RpnSolver, "#result" do
  rpn = RpnSolver.new 
  it "returns rpn solved value" do
    result = rpn.rpn_solver("15 7 1 1 + - / 3 * 2 1 1 + + -")
    expect(result).to eq 5 
  end 

  it "returns result of addition" do 
    result = rpn.evaluate_result("+",1,3)
    expect(result).to eq 4

  end 

  it "returns result of sub" do 
    result = rpn.evaluate_result("-",1,3)
    expect(result).to eq 2

  end 

  it "returns result of mult" do 
    result = rpn.evaluate_result("*",1,3)
    expect(result).to eq 3

  end
  
  it "returns result of div" do
    result = rpn.evaluate_result("/",1,3)
    expect(result).to eq 3

  end 

end
