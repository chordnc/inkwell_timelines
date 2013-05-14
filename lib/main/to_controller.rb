module InkwellTimelines
  module MethodsForControllers
    def inkwell_timelines_get_params(request_body, options = {})
      request_params = ActiveSupport::JSON.decode(request_body).symbolize_keys!
      options.merge! request_params
      options.merge! ActiveSupport::JSON.decode(options[:transferred_params]).symbolize_keys!
      options.delete :transferred_params

      if options[:selectors_values]
        options[:selectors_values].each do |selector_values|
          selector_values.symbolize_keys!
          options[selector_values[:name].to_sym] = selector_values[:data]
        end
        options.delete :selectors_values
      end

      options
    end
  end
end

ActionController::Base.send :include, InkwellTimelines::MethodsForControllers