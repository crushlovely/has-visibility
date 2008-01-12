require File.join(File.dirname(__FILE__), 'lib/has_visibility')
ActiveRecord::Base.send(:include, Boom::HasVisibility)
