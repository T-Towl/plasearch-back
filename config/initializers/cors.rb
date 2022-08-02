# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
<<<<<<< HEAD
    origins 'http://localhost:3000'
    # Rails.application.credentials.origin[:plasearch_front] , 
=======
    # origins Rails.application.credentials.origin[:plasearch_front]
    origins 'http://localhost:3000/'
>>>>>>> b1432acd5a9ea2fe1a16cf2b033cc9f1a0f5a398

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
