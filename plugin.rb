# name: custom-redirect
# about: Redirect to a custom route
# version: 0.1
# authors: Abdullah Talayhan

Discourse::Application.routes.append do
    get '/:year/:id', to: redirect('/tag/%{year}-%{id}') , constraints: {year: /[0-9]+/, id: /[0-9]+/}
end