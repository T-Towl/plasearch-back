# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
<<<<<<< HEAD
  allow do 
    origins 'http://localhost:3000/'

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end

  allow do 
    origins Rails.application.credentials.origin[:plasearch_front]
=======
  allow do
    origins 'http://localhost:3000'
    # Rails.application.credentials.origin[:plasearch_front] , 
>>>>>>> 12d98f26b237fa819caca265b54662b3f38e76c4

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
