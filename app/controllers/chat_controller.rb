class ChatController < ApplicationController
  
  def index
    
  end
  
  def save
    log = ChatLog.new(:data=>h(params[:chat_data]))
    log.save
    render :text=>url_for(:action=>:view, :id=>log.id)
  end
  
  def view
    render :text=>ChatLog.find(params[:id]).data.gsub("\n", "<br/>")
  end
  
end
