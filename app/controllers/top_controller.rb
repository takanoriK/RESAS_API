class TopController < ApplicationController
  protect_from_forgery except: :get_data

  def index
  end

  def show
    render :text => "id = #{params[:id]}"
  end

  def get_data
    render :text => "番号：#{params[:id]},  名前：#{params[:name]}"
  end
  
  def aaa
    
  end

end