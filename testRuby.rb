require 'docraptor'

puts "After require"

DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

puts "After configuration"

$docraptor = DocRaptor::DocApi.new

puts "After API setup"

response = $docraptor.create_doc(
  test:             true,                                         # test documents are free but watermarked
  document_content: "<html><body>Hello World</body></html>",      # supply content directly
  # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
  name:             "docraptor-ruby.pdf",                         # help you find a document later
  document_type:    "pdf",                                        # pdf or xls or xlsx
  # javascript:       true,                                       # enable JavaScript processing
  # prince_options: {
  #   media: "screen",                                            # use screen styles instead of print styles
  #   baseurl: "http://hello.com",                                # pretend URL when using document_content
  # },
)

puts "After response setup"