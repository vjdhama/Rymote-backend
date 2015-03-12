class RhythmboxWorker
  	include Sidekiq::Worker

  	def perform(state)
  		if state=="play"
  			a = Process.spawn("rhythmbox-client --check-running")
  			puts a
  		end
  	end

  	def play()
  		Process.spawn("rhythmbox-client --play")
  	end

  	def pause()
  		Process.spawn("rhythmbox-client --play")
  	end
end