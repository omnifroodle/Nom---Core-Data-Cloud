class Recipe < ActiveRecord::Base
  named_scope :from, lambda { |lastid|
    unless lastid.blank? or lastid.to_i == 0 
      { :conditions => ['updated_at >= ?', Time.at(lastid.to_i)] }
    end
  }
end
