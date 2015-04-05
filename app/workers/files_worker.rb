class FilesWorker
  	include Sidekiq::Worker

  	def perform(path)
		Process.spawn("nautilus -s #{path}")
  	end
end