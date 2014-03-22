require_relative "../src/strategy.rb"

describe "solucion strategy" do
  it "permite calcular el precio de un pantalon importado" do
     pantalon = Prenda.new(250, Importado.new(0.5))
     pantalon.precio_final.should == 390
  end

  it "permite calcular el precio de un pantalon nacional" do
     pantalon = Prenda.new(250, Nacional.new)
     pantalon.precio_final.should == 260
  end

  
end
