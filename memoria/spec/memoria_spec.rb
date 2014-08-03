require '../lib/memoria'
describe Memoria do

	it "la Secuencia es AABB entonces la secuencia oculta debe de ser _ _ _ _" do
		#Arrange
		memoria = Memoria.new
		#Atc
		memoria.secuencia ("AABB")
		#Assert
		expect(memoria.obtener_secuencia_oculta).to eq("_ _ _ _")
	end

	it "la Secuencia es ZXCVB luego muestra _ _ _ _ _" do
		#Arrange
		memoria = Memoria.new
		#Atc
		memoria.secuencia ("ZXCVB")
		#Assert
		expect(memoria.obtener_secuencia_oculta).to eq("_ _ _ _ _")
	end

	it "la Secuencia es ZXCVBXX123 luego muestra _ _ _ _ _ _ _ _ _ _" do
		#Arrange
		memoria = Memoria.new
		#Atc
		memoria.secuencia ("ZXCVBXX123")
		#Assert
		expect(memoria.obtener_secuencia_oculta).to eq("_ _ _ _ _ _ _ _ _ _")
	end

	it "Obtener la secuencia ingresada" do
		memoria = Memoria.new
		memoria.secuencia("ZXCZB")
		expect(memoria.obtener_secuencia).to eq("ZXCZB")
	end

	it "Ingresa ADMIN, al validar debe usar una posicion 1,2 y mostrar A D _ _ _" do
		memoria = Memoria.new
		memoria.secuencia("ADMIN")
		expect(memoria.valida(1,2)).to eq("A D _ _ _")
	end
	
	it "Ingresa ERROR, y posicion 1,5 y 1,3 luego deberia mostrar 2 Errores" do
		memoria = Memoria.new
		memoria.secuencia("ERROR")
		memoria.valida(1,5)
		memoria.valida(1,3)
		expect(memoria.get_error).to eq("2 Errores")
	end
end



