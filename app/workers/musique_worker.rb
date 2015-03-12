class MusiqueWorker
  	include Sidekiq::Worker

  	def perform(state)
		if state=="next"
			logger.info "Playing next song!!"
			playNext()
		else
			logger.info "Toggling play/pause!!"
			togglePlaying()
		end
  	end

  	def playNext()
  		Process.spawn("musique --next")
  	end

  	def togglePlaying()
  		Process.spawn("musique --toggle-playing")
  	end
end