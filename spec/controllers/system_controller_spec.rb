require "rails_helper"


RSpec.describe SystemController, :type => :controller do
    describe "GET #files" do
        it "responds successfully with an HTTP 200 status code" do
            get :files
            expect(response).to be_success
            expect(response).to have_http_status(200)
        end

        it "should have right job queue size" do
            FilesWorker.perform_async("/home/")
            assert_equal 2, FilesWorker.jobs.size
            FilesWorker.drain
            assert_equal 0, FilesWorker.jobs.size 
        end
    end
    
    describe "GET #musique" do
        it "responds successfully with an HTTP 200 status code" do
            get :files
            expect(response).to be_success
            expect(response).to have_http_status(200)
        end
    end    

    describe "GET #rhythmbox" do
        it "responds successfully with an HTTP 200 status code" do
            get :files
            expect(response).to be_success
            expect(response).to have_http_status(200)
        end
    end
end