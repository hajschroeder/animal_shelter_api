require 'rails_helper'

describe "post an animal route", :type => :request do 

  before do 
    post'/animals', params: { :species => 'cat', :name => 'ophelia', :breed => 'queen', :age => 21 }
  end

  it 'returns the animal species' do
    expect(JSON.parse(response.body)['species']).to eq('cat')
  end
  
  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('ophelia')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('queen')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(21)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
