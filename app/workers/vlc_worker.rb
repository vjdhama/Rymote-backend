class VlcWorker
  	include Sidekiq::Worker

  	def perform(state)
  		if state.eql?("play")
  			play()
  		elsif state.eql?("pause")
  			pause()
  		elsif state.eql?("next")
  			playNext()
  		elsif state.eql?("stop")
  			stop()
  		end
  	end

  	def play()
  		Process.spawn("dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Play")
  	end

  	def pause()
  		Process.spawn("dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Pause")
  	end

  	def playNext()
  		Process.spawn("dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next")
  	end

  	def stop()
  		Process.spawn("dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.vlc /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop")
  	end
end