require 'net/http'
require 'uri'
require 'json'

class UseApiController < ApplicationController
    def getPrefecturesData(url)
        uri = URI.parse(URI.escape(url))

        https = Net::HTTP.new(uri.host, uri.port)
        https.use_ssl = true

        param = {}
        param['X-API-KEY'] = ''

        req = Net::HTTP::Get.new(uri.request_uri, param)
        res = https.request(req)

        json = res.body
        result = JSON.parse(json)
    end
end