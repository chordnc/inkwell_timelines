Rails.application.routes.draw do

  mount InkwellTimelines::Engine => "/inkwell_timelines"
  match "/test" => "test#show"
  root to: "test#show"
end
