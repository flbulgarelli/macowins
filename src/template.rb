class PrendaAbstracta
  attr_accessor :precio_base

  def initialize(precio_base)
    @precio_base = precio_base
  end

  def valor_negocio 
    10
  end

  def precio_final
    (valor_negocio + precio_base) * (1 + tasa_importacion)
  end
end

class PrendaImportada < PrendaAbstracta
  def initialize(precio_base, tasa_importacion)
    super(precio_base)
    @tasa_importacion = tasa_importacion
  end

  def tasa_importacion
    @tasa_importacion
  end
end

class PrendaNacional < PrendaAbstracta
  def tasa_importacion
    0
  end
end
     
