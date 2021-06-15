# frozen_string_literal:true

FactoryBot.define do
  factory :oauth_application, class: Doorkeeper::Application do
    name { 'Test' }
    redirect_uri { 'urn:ietf:wg:oauth:2.0:oob' }
    uid { '12345678' }
    secret { '87654321' }
  end
end
# client_id zC9v0UwGKer5_lE6xvDasedHT9oo5gbEsIQO9V-M5Kk
# client_secret iTGc4saU1qfwiLDF9zT9hqaJKt3g-wWk8R7_ou2Pc24
# code cEGr1DQBKcFNDsWDuBbAjZzs-5obUaCwG7ayQ4tG87k
# grant_type authorization_code
# redirect_uri urn:ietf:wg:oauth:2.0:oob
# {
#   "access_token": "0WuhPaFZcWHg8rLFhY4q_FYfhgD8gkZ6WCoDNeyy8LA",
#   "token_type": "Bearer",
#   "expires_in": 7200,
#   "scope": "public",
#   "created_at": 1623612336
# }