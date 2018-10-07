class TopController < ApplicationController
  protect_from_forgery except: :get_data

  @@api = UseApiController.new()

  def index
      # 都道府県のID, 名称を取得
      pref_data = @@api.getPrefecturesData()
      @select_box_pref_data = pref_data['result']
  end

  def get
      pref_name = params['pref_name']
      pref_id = params[:prefecture]
      
      @get_data = []
      @get_data = Menu.new.getData(pref_id)
      logger.debug(@get_data)
      #DBから取得したデータをBingSearchApiに渡す
      ##term = "マキシマムザホルモン"
      ##image_data = @@api.getBingSearchImageData(term)
      ##@images = image_data['value']
      render "get"
  end

end

