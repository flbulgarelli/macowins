class Prenda
  attr_accessor :precio_base

  def initialize(precio_base)
    @precio_base = precio_base
  end

  def valor_negocio 
    10
  end

  def precio_final
    valor_negocio + precio_base
  end
end

class PrendaImportada < Prenda
  attr_accessor :tasa_importacion

  def initialize(precio_base, tasa_importacion)
    super(precio_base)
    @tasa_importacion = tasa_importacion
  end

  def precio_final
     super * (1 + tasa_importacion)
  end
end
     
