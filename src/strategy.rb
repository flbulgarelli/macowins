class Prenda
  attr_accessor :precio_base, :procedencia

  def initialize(precio_base, procedencia)
    @precio_base = precio_base
    @procedencia = procedencia
  end

  def valor_negocio 
    10
  end

  def precio_final
    procedencia.precio_final( valor_negocio + precio_base  )
  end
end

class Nacional
  def precio_final(precio_antes_de_importacion)
     precio_antes_de_importacion
  end
end

class Importado
  attr_accessor :tasa_importacion

  def initialize(tasa_importacion)
    @tasa_importacion = tasa_importacion
  end

  def precio_final(precio_antes_de_importacion)
     precio_antes_de_importacion * (1 + tasa_importacion)
  end
end
     
