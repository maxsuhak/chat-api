require 'swagger_helper'

RSpec.describe 'sessions', type: :request do
  path '/login' do
    get('new session') do
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

    post('create session') do
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

  path '/logout' do
    delete('delete session') do
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
