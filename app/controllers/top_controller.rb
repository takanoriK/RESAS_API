class TopController < ApplicationController
  protect_from_forgery except: :get_data
  protect_from_forgery :except => [:get]

  @@api = UseApiController.new()

  def index
      # 都道府県のID, 名称を取得
      pref_data = @@api.getPrefecturesData()
      @select_box_pref_data = pref_data['result']
  end

  def get
      pref_id = params[:prefecture]
      @get_data = Menu.new.getData(pref_id)
      @images = @get_data
      @imagedata = []
      @images.map{|image|
        @imagedata.push(@@api.getBingSearchImageData(image))
      }
      
      render "get"
  end

end

