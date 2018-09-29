class TopController < ApplicationController
  protect_from_forgery except: :get_data
  
  @@api =UseApiController.new()

  def index
      # 都道府県のID, 名称を取得
      pref_data = commonPrefecturesData()
      @select_box_pref_data = pref_data['result']

  end

  def get
      pref_name = params['pref_name']
      @pref_id = params[:prefecture]

      @data = commonPrefecturesData()
      render "get"
  end


  private
      def commonPrefecturesData()
          prefectures_data = @@api.getPrefecturesData("https://opendata.resas-portal.go.jp/api/v1-rc.1/prefectures")

          return prefectures_data
      end
end