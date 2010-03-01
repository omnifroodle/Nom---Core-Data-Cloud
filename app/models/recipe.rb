class Recipe < ActiveRecord::Base
  named_scope :from, lambda { |lastid|
    unless lastid.blank? or lastid.to_i == 0 
      { :conditions => ['updated_at >= ?', Time.at(lastid.to_i)] }
    end
  }
  
  named_scope :active, {:deleted => false}
  named_scope :deleted, {:deleted => true}
  
  #override destroy for soft deletes
  
  def destroy
    self.update_attribute :deleted, true
  end
end
