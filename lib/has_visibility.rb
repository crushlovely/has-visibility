require 'has_visibility/class_methods'
require 'activerecord'
ActiveRecord::Base.class_eval { include HasVisibility }
