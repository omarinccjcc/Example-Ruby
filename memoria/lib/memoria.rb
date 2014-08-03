class Memoria

	attr_accessor :secuencia_oculta, :secuencia,:error

	def secuencia(secuencia)
	   longitud = secuencia.length
           @secuencia = secuencia
	   @secuencia_oculta = ""
	   longitud.times do
	       @secuencia_oculta = @secuencia_oculta + "_ "
	   end
           @secuencia_oculta.strip!
	end

	def valida(posicion1,posicion2)
	   secuencia_ = obtener_secuencia	
	   secuencia_oculta = obtener_secuencia_oculta
	   secuencia_oculta[(posicion1.to_i-1)*2] = secuencia_[posicion1.to_i-1]
	   secuencia_oculta[(posicion2.to_i-1)*2] = secuencia_[posicion2.to_i-1]
	   
	   #para validar 
	   if secuencia_oculta[(posicion1.to_i-1)*2] != secuencia_oculta[(posicion2.to_i-1)*2]
	      if @error == ""
	         @error = 0
	      end
	      @error = @error.to_i + 1
	   end
	   return secuencia_oculta
	end

	def obtener_secuencia_oculta
	   return @secuencia_oculta
	end

	def obtener_secuencia
  	   @secuencia
        end

	def get_error
	   if @error.to_i == 1
	      error_return = "#{error} Error"
	   elsif @error.to_i > 1
	      error_return = "#{error} Errores"
	   end
	   error_return
	end

end
