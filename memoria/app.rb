require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra'
require './lib/memoria'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

get '/' do
	@@memoria = Memoria.new
   erb :inicio
end

post '/inicio' do
	@@memoria = Memoria.new
   erb :inicio
end


post '/juego' do
	secuencia =@params[:secuencia]
	@@memoria.secuencia(secuencia)
	@secuencia_oculta = @@memoria.obtener_secuencia_oculta
	erb :juego
end

post '/jugar' do
	posiciones = @params[:posiciones]
        posiciones12 = posiciones.split(",")
	@@memoria.secuencia(@@memoria.obtener_secuencia)
	#se lleva al modelo
	#secuencia_ = @@memoria.obtener_secuencia	
	#@secuencia_oculta = @@memoria.obtener_secuencia_oculta
	#@secuencia_oculta[(posiciones[0].to_i-1)*2] = secuencia_[posiciones[0].to_i-1]
	#@secuencia_oculta[(posiciones[1].to_i-1)*2] = secuencia_[posiciones[1].to_i-1]
	@secuencia_oculta = @@memoria.valida(posiciones12[0].to_i,posiciones12[1].to_i)
	@error = @@memoria.get_error
	if @@memoria.get_error == "5 Errores"
	   erb :mensaje
	else
	   erb :juego
	end
end





