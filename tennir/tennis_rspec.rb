require './tennis'
describe Tennis do

	before do
	   @tennis =Tennis.new	  
	end

	it "Comience el juego con el marcador 0-0" do
	   #Arrange
	   #tennis =Tennis.new
	   #Act
	   #Assert
	   expect(@tennis.puntaje).to eq("0-0")
	end
	
	it "Jugador1 anota un punto el marcador debe de ser 15-0" do
	   #Arrange
	   #tennis =Tennis.new
	   #Act
	   @tennis.anota_jugador1
	   #Assert
	   expect(@tennis.puntaje).to eq("15-0")
	end

	it "Jugador2 anota un punto el marcador debe de ser 0-15" do
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("0-15")
	end

	it "Empatan ambos jugadores y el marcador es 15-15" do
	   @tennis.anota_jugador1
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("15-15")
	end

	it "El jugador1 anota dos veces, el marcador es 30-0" do
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   expect(@tennis.puntaje).to eq("30-0")
	end

	it "El jugador1 anota dos veces, el marcador es 0-30" do
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("0-30")
	end
	
	it "Empatan ambos jugadores y el marcador es 30-30" do
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("30-30")
	end

	it "El jugador1 anota tres veces, el marcador es 40-0" do
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   expect(@tennis.puntaje).to eq("40-0")
	end

	it "El jugador2 anota tres veces, el marcador es 0-40" do
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("0-40")
	end

	it "Ambos jugadores anotan 3 veces, el marcador debe ser deuce" do
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   @tennis.anota_jugador1
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   @tennis.anota_jugador2
	   expect(@tennis.puntaje).to eq("deuce")
	end

	#it "El jugador1 gana el juego" do
	#   @tennis.anota_jugador1
	#   @tennis.anota_jugador1
	#   @tennis.anota_jugador1
	#   @tennis.anota_jugador1
	#   expect(@tennis.puntaje).to eq("win1")
	#end
	
end


