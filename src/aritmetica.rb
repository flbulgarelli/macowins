class Prenda
  attr_accessor :precio_base, :tasa_importacion
  
  def initialize(precio_base, tasa_importacion)
    @precio_base = precio_base
    @tasa_importacion = tasa_importacion
  end

  def valor_negocio
    10
  end

  def precio_final
     (valor_negocio + precio_base) * (1 + tasa_importacion)
  end


end

