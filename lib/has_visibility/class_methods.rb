require 'has_visibility/instance_methods'

module HasVisibility
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def has_visibility
      class_eval do
        include HasVisibility::InstanceMethods
        named_scope :visible, :conditions => { :is_visible => true }
        named_scope :hidden, :conditions => { :is_visible => false }
      end
    end
  end
end
