module InkwellTimelines
  module MethodsForControllers
    def inkwell_timelines_get_params(request_body, options = {})
      request_params = ActiveSupport::JSON.decode(request_body).symbolize_keys!
      options.merge! request_params
      options.merge! ActiveSupport::JSON.decode(options[:transferred_params]).symbolize_keys!
      options.delete :transferred_params
      options
    end
  end
end

ActionController::Base.send :include, InkwellTimelines::MethodsForControllers