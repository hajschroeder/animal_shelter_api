require 'rails_helper'

describe 'delete', :type => :request do
  before do 
    post'/animals', params: { :species => 'cat', :name => 'ophelia', :breed => 'queen', :age => 21 }
    @animal_id = JSON.parse(response.body)['id']
    delete "/animals/#{@animal_id}"
  end

  it 'returns success status' do 
    expect(response).to have_http_status(200)
  end
end

