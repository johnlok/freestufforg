class Item < ActiveRecord::Base
  has_many :item_attachments
  accepts_nested_attributes_for :item_attachments
end
