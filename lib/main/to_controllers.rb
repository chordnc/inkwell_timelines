module InkwellTimelines
  module MethodsForControllers
    def timeline_autoload_data(options = {})
      "111"
    end
  end
end

ActionController::Base.send :include, InkwellTimelines::MethodsForControllers