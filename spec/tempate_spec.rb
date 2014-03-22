require_relative "../src/template.rb"

describe "solucion strategy" do
  it "permite calcular el precio de un pantalon importado" do
     pantalon = PrendaImportada.new(250, 0.5)
     pantalon.precio_final.should == 390
  end

  it "permite calcular el precio de un pantalon nacional" do
     pantalon = PrendaNacional.new(250)
     pantalon.precio_final.should == 260
  end

  
end
