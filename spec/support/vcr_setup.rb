VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock
  c.default_cassette_options = { :record => :once }
  c.filter_sensitive_data('<ACCESS_TOKEN>') { ENV['ACCESS_TOKEN'] }
  c.ignore_hosts 'codeclimate.com'
end
