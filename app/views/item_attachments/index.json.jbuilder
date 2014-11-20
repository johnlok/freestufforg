json.array!(@item_attachments) do |item_attachment|
  json.extract! item_attachment, :id, :item_id, :avatar
  json.url item_attachment_url(item_attachment, format: :json)
end
