Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'postal_pincode/get_post_office_by_pincode/:pincode', to: 'postal_pincode#get_post_office_by_pincode'
      get 'postal_pincode/get_post_office_by_branch_name/:branch_name', to: 'postal_pincode#get_post_office_by_branch_name'
    end
  end

  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'
end
