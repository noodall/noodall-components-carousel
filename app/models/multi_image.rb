class MultiImage
  include MongoMapper::EmbeddedDocument

  key :title,     String
  key :url,       String
  key :description, String
  key :asset_id,  ObjectId

  belongs_to :asset
end
