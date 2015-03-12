class SystemController < ApplicationController
	def files
		FilesWorker.perform_async(params[:path])
	end

	def musique
		MusiqueWorker.perform_async(params[:state])
	end

	def rhythmbox
		RhythmboxWorker.perform_async(params[:state])
	end
end
