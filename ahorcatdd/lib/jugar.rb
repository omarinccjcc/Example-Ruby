class Jugar
	attr_accessor :palabra, :secuencia, :intentos, :mensaje_final, :secuencia_anterior,
							:secuencia_ganar

	def initialize
		@secuencia = ""
		@palabra = ""
		@intentos = 0
		@mensaje_final = ""
		@fallo = false
		@secuencia_ganar = ""
	end

	def iniciar_secuencia(palabra)
		@secuencia = ""
		@palabra = ""
		@intentos = 0
		@mensaje_final = ""
		@fallo = false
		@secuencia_ganar = ""

		@palabra = palabra
		longitud = @palabra.length
		posicion = 0
		longitud.times do
			@secuencia = @secuencia + "_ "
			@secuencia_ganar = @secuencia_ganar + palabra[posicion] + " "
			posicion = posicion + 1
		end
		@secuencia = @secuencia.strip
		@secuencia_ganar = @secuencia_ganar.strip

		return @secuencia
	end

	def adivinar(letra)
		posicion = 0
		aciertos = 0

		@palabra.length.times do
			if @palabra[posicion] == letra
				@secuencia[posicion*2] = letra
				aciertos = aciertos + 1
			end
			posicion = posicion + 1
		end
 
		if aciertos == 0
			@intentos = @intentos + 1						
		end

		if @intentos >= 6
			@mensaje_final = "Perdiste"
		end
	end

	def ganaste_juego
		ganaste_juego = ""
		if @secuencia == @secuencia_ganar
			@mensaje_final = "Ganaste"
			ganaste_juego = "S"
		else
			ganaste_juego = "N"
		end

		return ganaste_juego
	end

end
