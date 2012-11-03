require 'goqr/version'

module Goqr
  DEFAULT_OPTIONS = {
    bgcolor: 'f-f-f',
    :'charset-source' => 'UTF-8',
    :'charset-target' => 'UTF-8',
    color: '0-0-0',
    data: nil,
    ecc: 'L',
    format: 'png',
    margin: 1,
    size: '10x10',
    qzone: 0
  }

  def goqr(options = {})
    options = options.reverse_merge(DEFAULT_OPTIONS)
    options[:data] = CGI.escape(options[:data])
    params = options.collect { |k, v| "#{k}=#{v}" }.join('&')

    "#{goqr_api_url}?#{params}"
  end

  private

  def goqr_api_url
    'http://api.qrserver.com/v1/create-qr-code'
  end
end

ActionView::Base.send(:include, Goqr) if defined? ActionView::Base
