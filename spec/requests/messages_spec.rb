require 'swagger_helper'

RSpec.describe 'messages', type: :request do
  path '/messages' do
    post('create message') do
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
