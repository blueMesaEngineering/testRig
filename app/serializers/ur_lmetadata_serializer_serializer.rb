class UrLmetadataSerializerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :id, :pdf_version, :producer, :title, :metadata, :page_count
end
