require 'has_visibility/instance_methods'
require 'has_visibility/singleton_methods'

module HasVisibility
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def has_visibility
      class_eval do
        include HasVisibility::InstanceMethods
        extend HasVisibility::SingletonMethods
      end
    end
  end
end
