require 'rails_helper'

RSpec.describe MersenneController, type: :controller do
  it 'returns success' do
    get :form
    expect(response.status).to eq(200)
  end

  it 'show in html' do
    get :result, params: { num: 100000, mode: 'html' }
    expect(response.content_type).to eq('text/html; charset=utf-8')
  end

  it 'show in xml' do
    get :result, params: { num: 100000, mode: 'xml' }
    expect(response.content_type).to eq('application/xml; charset=utf-8')
  end
end
