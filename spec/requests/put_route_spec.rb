require 'rails_helper'

describe 'edit an animal', :type => :request do

  before do 
    post'/animals', params: { :species => 'cat', :name => 'ophelia', :breed => 'queen', :age => 21 }
    @animal_id = JSON.parse(response.body)['id']
    put "/animals/#{@animal_id}", params: { :species => 'alien', :name => 'kevin', :breed => 'king', :age => 75 }
    get "/animals/#{@animal_id}"
  end

  it "updates the edited column" do
    puts(response.body)
    expect(JSON.parse(response.body)['species']).to eq('alien')
    expect(JSON.parse(response.body)['name']).to eq('kevin')
    expect(JSON.parse(response.body)['breed']).to eq('king')
    expect(JSON.parse(response.body)['age']).to eq(75)
  end

  it 'returns a success status' do 
    put "/animals/#{@animal_id}", params: { :species => 'alien', :name => 'kevin', :breed => 'king', :age => 75 }
    expect(response).to have_http_status(200)
  end
end


