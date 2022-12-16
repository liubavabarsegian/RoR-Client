require 'open-uri'

class MersenneController < ApplicationController
  include MersenneHelper

  def form
  end

  def result
    @input = MersenneRecord.new(mersenne_params)
    puts "INPUT"
    puts @input.num
    # unless @input.valid? 
    #   redirect_to root_path
    # end

    url_with_params = URL_SERV + "?num=#{@input.num}"
    @respond_xml = Nokogiri::XML(URI.open(url_with_params))
    show_result(@input.mode)
  end

  private
  def mersenne_params
    params.permit(:num, :mode)
  end
end
