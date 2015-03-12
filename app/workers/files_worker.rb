class FilesWorker
  	include Sidekiq::Worker

  	def perform(path)
		logger.info "Things are happening."
		Process.spawn("nautilus -s #{path}")
		logger.info "Things are done(supposedly)."
  	end
end