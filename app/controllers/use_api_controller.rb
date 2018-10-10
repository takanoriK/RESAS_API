require 'net/http'
require 'uri'
require 'json'

class UseApiController < ApplicationController
    def getPrefecturesData()
        uri = URI.parse(URI.escape("https://opendata.resas-portal.go.jp/api/v1-rc.1/prefectures"))

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        param = {}
        param['X-API-KEY'] = 'ぱすわーど'

        req = Net::HTTP::Get.new(uri.request_uri, param)
        res = https.request(req)

        json = res.body
        result = JSON.parse(json)
    end

    def getBingSearchImageData(term)
        accessKey = "7d40cc439b27453f8da365106bb1df9d"
        uri       = "ぱすわーど"
        path      = "/bing/v7.0/images/search"

        if accessKey.length != 32 then
            puts "Invalid Bing Search API subscription key!"
            puts "Please paste yours into the source code."
            abort
        end

        uri = URI(uri + path + "?q=" + URI.escape(term))
        
        request = Net::HTTP::Get.new(uri)
        request['Ocp-Apim-Subscription-Key'] = accessKey
        
        response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
            http.request(request)
        end
        
        result = JSON.parse(response.body)
        
    end
end