require 'swagger_helper'

RSpec.describe 'conversations', type: :request do
  path '/conversations' do
    get('list conversations') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:examples] = {
            'application/json' => JSON.parse(
              response.body,
              symbolize_names: true
            )
          }
        end
        run_test!
      end
    end

    post('create conversation') do
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:examples] = {
            'application/json' => JSON.parse(
              response.body,
              symbolize_names: true
            )
          }
        end
        run_test!
      end
    end
  end
end
