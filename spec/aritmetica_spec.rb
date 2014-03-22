require_relative "../src/aritmetica.rb"

describe "solucion artimetica" do
  it "permite calcular el precio de un pantalon importado" do
     pantalon = Prenda.new(250, 0.5)
     pantalon.precio_final.should == 390
  end

  it "permite calcular el precio de un pantalon nacional" do
     pantalon = Prenda.new(250, 0)
     pantalon.precio_final.should == 260
  end

  
end
