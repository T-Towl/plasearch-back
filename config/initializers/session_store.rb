if Rails.env === 'production'
<<<<<<< HEAD
  Rails.application.config.session_store :cookie_store, key: '_plasearch-back', domain: Rails.application.credentials.origin[:plasearch_front]
=======
  Rails.application.config.session_store :cookie_store, key: '_plasearch-back', domain: 'http://localhost:3000/'
>>>>>>> 12d98f26b237fa819caca265b54662b3f38e76c4
else
  Rails.application.config.session_store :cookie_store, key: '_plasearch-back'
end