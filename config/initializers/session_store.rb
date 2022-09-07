if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_plasearch-back', domain: "http://localhost:3000"
else
  Rails.application.config.session_store :cookie_store, key: '_plasearch-back'
end