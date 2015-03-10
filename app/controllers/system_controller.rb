class SystemController < ApplicationController
	def getProcess
		ProcessWorker.perform_async(params[:path])
	end
end
