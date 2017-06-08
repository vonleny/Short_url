class UrlsController < ApplicationController
	before_action :set_url, only: [:show]
	def index
		@urls = Url.all
	end
	def show
		redirect_to  @url
	end
	def alt
		@url = Url.where(short: params[:short]).first
		
		redirect_to @url.url
	end
	def create 
		@url = Url.new
		@url.short = ('a'..'z').to_a.shuffle[0,4].join
		@url.url = params[:url]
		@url.save
		
	end
	private
	def set_url
      @url = Url.find(params[:id])
    end
end
