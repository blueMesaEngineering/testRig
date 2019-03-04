class UrlMetadataSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :url, :pdf_version, :producer, :title, :metadata, :page_count
end
