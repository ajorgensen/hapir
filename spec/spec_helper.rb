require 'webmock'
require 'json'

require 'hapir'

WebMock.disable_net_connect!

def read_fixture(name)
  JSON.parse(File.read(File.expand_path(File.join(File.dirname(__FILE__), 'fixtures', name))))
end
