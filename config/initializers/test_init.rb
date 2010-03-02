require 'plist'
module PlistSerialization
  def to_plist(options = nil)
    hash = ActiveRecord::Serialization::Serializer.new(self, options).serializable_record
    hash.to_plist
  end
  
  def to_plist_node
    Plist::Emit.dump(ActiveRecord::Serialization::Serializer.new(self, nil).serializable_record, false)
  end
  
  def from_plist(plist)
    self.attributes = Plist::parse_xml(plist)
    self
  end
end

ActiveRecord::Base.send :include, PlistSerialization