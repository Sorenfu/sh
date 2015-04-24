Rails.application.routes.draw do

  root 'welcome#index'
  constraints subdomain: 'www' do
    get ':any', to: redirect(subdomain: nil, path: '/%{any}'), any: /.*/
  end
end
