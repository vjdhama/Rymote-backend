class RhythmboxWorker
  	include Sidekiq::Worker

  	def perform(state)
  		if state.eql?("play")
  			play()
  		elsif state.eql?("pause")
  			pause()
  		elsif state.eql?("next")
  			playNext()
  		end
  	end

  	def play()
  		Process.spawn("rhythmbox-client --play")
  	end

  	def pause()
  		Process.spawn("rhythmbox-client --pause")
  	end

  	def playNext()
  		Process.spawn("rhythmbox-client --pause")
  	end
end