class Fclient
	require 'socket'

	def initialize
    @socket = TCPSocket.open('200.17.252.251', 5151) #Mude o IP para o IP do computador que será o Gerenciador
  end

  def main
  	system "clear"
    listen
    @socket.close
  end

  def listen
    loop do
      command = @socket.gets.chomp
      system "#{command}"
    end
  end

end
Fclient.new.main
