class FirefoxWorker
	include Sidekiq::Worker

	def perform(action)
		Process.spawn("firefox --new-tab #{action}")
	end
end