class MarimunesController < ApplicationController
  soap_service namespace: 'ApiService'

  soap_action 'doLogin',
              { args:
                { username: :string,
                  password: :string
                }, return: {result: { result_code: :string, result_description: :string, result: :string }}
              }
  soap_action 'instantCardIssue',
              { args:
                { last_name: :string,
                  first_name: :string,
                  gender: :string,
                  address: :string,
                  city: :string,
                  dob: :string,
                  postal: :string,
                  state: :string,
                  country: :string,
                  home_phone: :string,
                  email: :string,
                  national_id: :string,
                }, return: {result: { result_code: :string, result_description: :string, result: { card_id: :string, expiration: :sting } } }
              }

  def doLogin
    render soap: {result: { result_code: '0000', result_description: 'Successful', result: 'DD62475A3F3C9D3C9BC08C3A69DA0568' }}
  end

  def instantCardIssue
    render soap: {result: { result_code: '0000', result_description: 'Successful', result: { card_id: '00701473', expiration:'0716' } } }
  end

end
