# frozen_string_literal: true

require 'open-uri'

# controller
class MersenneController < ApplicationController
  include MersenneHelper

  def form; end

  # rubocop:disable Security/Open
  def result
    @input = MersenneRecord.new(mersenne_params)
    puts 'INPUT'
    puts @input.num
    return unless @input.valid?

    url_with_params = URL_SERV + "?num=#{@input.num}"
    @respond_xml = Nokogiri::XML(URI.open(url_with_params))
    show_result(@input.mode)
  end
  # rubocop:enable Security/Open

  private

  def mersenne_params
    params.permit(:num, :mode)
  end
end
