Rails.application.routes.draw do
  namespace :api do
    get "/single_view_url" => "speakers#single_view_action"
    get "/all_meetings_url" => "meetings#all_meetings_action"
  end
end
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
