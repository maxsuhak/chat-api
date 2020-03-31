Devise.setup do |config|
  require 'devise/orm/active_record'

  config.mailer_sender                      = 'simple-chat-api@example.com'
  config.case_insensitive_keys              = %i[email]
  config.strip_whitespace_keys              = %i[email]
  config.skip_session_storage               = %i[http_auth]
  config.stretches                          = Rails.env.test? ? 1 : 11
  config.reconfirmable                      = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length                    = 6..128
  config.email_regexp                       = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within              = 6.hours
  config.navigational_formats               = []
  config.sign_out_via                       = :delete

  config.jwt do |jwt|
    jwt.secret = ENV['DEVISE_SECRET_KEY']
    jwt.dispatch_requests = [
      ['POST', %r{^/login$}]
    ]
    jwt.revocation_requests = [
      ['DELETE', %r{^/logout$}]
    ]
    jwt.expiration_time = 5.minutes.to_i
  end
end
