class SystemController < ApplicationController
	def files
		FilesWorker.perform_async(params[:path])
	end

	def musique
		MusiqueWorker.perform_async(params[:state])
    	msg = { :status => "ok", :message => "Success!"}
    	render :json => msg
	end

	def rhythmbox
		RhythmboxWorker.perform_async(params[:state])
	end

	def volume
		if params[:up]
			VolumeWorker.perform_async(params[:up])
		elsif params[:down]
			VolumeWorker.perform_async(params[:down])
		end	
	end

	def vlc
	end
end
