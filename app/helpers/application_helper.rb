module ApplicationHelper

  def request_headers
    http_headers = request.env.select { |k, v| k.start_with?('HTTP_') }
    headers = http_headers.inject({}) do |a, (k, v)|
      a[k.sub(/^HTTP_/, "").downcase.gsub(/(^|_)\w/) { |word| word.upcase }.gsub("_", "-") ] = v
      a
    end
    # puts headers.to_a.map { |v| v.join(": ") }.join("\n")
  end
end
