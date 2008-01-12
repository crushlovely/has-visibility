module Boom
  module HasVisibility
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      # has_visibility
      def has_visibility
        include Boom::HasVisibility::InstanceMethods
        extend Boom::HasVisibility::SingletonMethods
      end
    end

    module SingletonMethods
      def find_visible
        find(:all, :conditions => {:is_visible => true})
      end
    end
    
    module InstanceMethods
      def toggle_visibility
        self.is_visible = self.is_visible? ? false : true
        self.save
      end

      def hide
        self.is_visible = false
        self.save
      end

      def show
        self.is_visible = true
        self.save
      end
    end
  end
end
