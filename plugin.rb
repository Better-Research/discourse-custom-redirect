# name: custom-redirect
# about: Redirect to a custom route
# version: 0.1
# authors: Abdullah Talayhan
relative_url_root = (defined?(Rails.configuration.relative_url_root) && Rails.configuration.relative_url_root) ? Rails.configuration.relative_url_root + '/' : '/'

Discourse::Application.routes.append do
    get '/:year/:id', to: redirect(relative_url_root + '%{year}/%{name}') , constraints: {year: /[0-9+]/, id: year: /[0-9+]/}
end