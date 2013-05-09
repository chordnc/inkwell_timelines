class Category < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessor :has_children
  def child_record_ids
    ActiveSupport::JSON.decode self.child_ids
  end
end
