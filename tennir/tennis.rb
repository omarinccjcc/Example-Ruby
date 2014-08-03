class Tennis

	attr_accessor :puntaje_jugador1,:puntaje_jugador2
	
	def initialize
	   @puntaje_jugador1 = 0
	   @puntaje_jugador2 = 0
	end

	def puntaje
	   if @puntaje_jugador1 == 40 && @puntaje_jugador2 == 40
	       return "deuce"
	   elsif @puntaje_jugador1.to_i > 40
	       return "win1"
	   else 
	       return "#{@puntaje_jugador1}-#{@puntaje_jugador2}"
	   end
	end

	def anota_jugador1
	   @puntaje_jugador1 = sume_puntaje(@puntaje_jugador1)
	end

	def anota_jugador2
	   @puntaje_jugador2 = sume_puntaje(@puntaje_jugador2)
	end

	def sume_puntaje(jugador_puntaje)
	   jugador_puntaje = jugador_puntaje.to_i + 15
	   if jugador_puntaje == 45
	      jugador_puntaje = 40
	   end
	   return jugador_puntaje
	end

end
