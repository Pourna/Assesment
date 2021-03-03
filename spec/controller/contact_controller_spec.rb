# frozen_string_literal: true

require 'rails_helper'

describe ContactController, 'route', type: :controller do
  it { should route(:get, '/').to(action: :index) }
  it { should route(:post, '/contact').to(action: :create) }
end

describe ContactController, 'index', type: :controller do
  it 'should redirect to contact.html' do
    get :index
    expect(response.status).to eq(302)
  end
end

describe ContactController, 'create', type: :controller do
  it 'should create new user' do
    body = {
        "first_name": 'Test',
        "last_name": 'One',
        "email": 'testone@gmail.com',
        "phone": '12345678',
        "message": 'Hi'
    }
    post :create, params: body
    expect(response.status).to eq(302)
  end
end

describe ContactController, 'index', type: :controller do
  it 'Should raise exception invalid methods' do
    expect { get :show }.to raise_error(/No route matches {:action=>"show", :controller=>"contact"}/)
  end
end
