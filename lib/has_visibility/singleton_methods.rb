module HasVisibility
  module SingletonMethods
    def find_visible(which = :all, conds = {})
      (conds[:conditions] ||= {}).merge!({:is_visible => true})
      find(which, conds)
    end
  end
end
