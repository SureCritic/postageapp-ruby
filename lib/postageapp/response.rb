class PostageApp::Response
  # == Constants ============================================================

  STATUS_TIMEOUT = 'timeout'.freeze
  STATUS_FAIL = 'fail'.freeze

  # == Properties ===========================================================

  # The UID should match the Request's UID. If Request didn't provide with one
  # PostageApp service should generate it for the Response
  attr_reader :uid
  
  # The status of the response in string format (like: ok, bad_request)
  # Will be set to +fail+ if Request times out
  attr_reader :status
  
  # The message of the response. Could be used as an error explanation.
  attr_reader :message
  
  # The data payload of the response. This is usually the return value of the
  # request we're looking for
  attr_reader :data

  attr_reader :exception

  # == Instance Methods =====================================================
  
  # Takes in Net::HTTPResponse object as the attribute.
  # If something goes wrong Response will be thought of as failed
  def initialize(http_response)
    case (http_response)
    when Exception
      @status = STATUS_TIMEOUT
      @message = '[%s] %s' % [ http_response.class, http_response.to_s ]
    else
      hash = JSON::parse(http_response.body)
      _response = hash['response']

      @status = _response['status']
      @uid = _response['uid']
      @message = _response['message']

      @data = hash['data']
    end

  rescue => e
    @status = STATUS_FAIL
    @exception = '[%s] %s' % [ e.class, e ]
  end
  
  # Little helper that checks for the Response status
  #   => @response.ok?
  #   >> true
  #   => @response.fail?
  #   >> false
  def method_missing(method)
    /.*?\?$/.match(method.to_s) ? "#{self.status}?" == method.to_s : super(method)
  end
end
