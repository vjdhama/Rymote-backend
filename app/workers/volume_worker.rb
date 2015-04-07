class VolumeWorker
  	include Sidekiq::Worker

  	def perform(amount)
  		puts "Test : " + amount
  		Process.spawn("pactl set-sink-volume 0 #{amount}%")
  	end
end