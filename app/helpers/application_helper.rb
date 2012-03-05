module ApplicationHelper
	# Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Payforapps"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

	def info_from_request
    parameters =String.new
    parameters+="request method: #{request.request_method}, response code: #{response.code}, server software: #{request.server_software}"
    "Request and response parameters:\n"+parameters
  end
end
