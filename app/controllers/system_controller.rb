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

	def volume
		VolumeWorker.perform_async(params[:amount])
    	msg = { :status => "ok", :message => "Success!"}
    	render :json => msg
	end

	def firefox
		FirefoxWorker.perform_async(params[:url])
    	msg = { :status => "ok", :message => "Success!"}
    	render :json => msg
	end

	def vlc
		VlcWorker.perform_async(params[:state])
    	msg = { :status => "ok", :message => "Success!"}
    	render :json => msg
	end
end
