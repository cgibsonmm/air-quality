require 'rails_helper'

RSpec.describe 'Create Device', type: :request do
  it 'should' do
    @device = attributes_for(:device)
    post '/api/v1/devices', params: { device: @device }
    expect(JSON.parse(response.body)['uuid']).to eq(@device[:uuid])
  end
end