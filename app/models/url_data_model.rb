class UrlDataModel < ApplicationRecord
	attr_accessor :id, :url, :pdf_version, :producer, :title, :metadata, :page_count
end
