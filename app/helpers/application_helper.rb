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

  # lazy build
  def setup_user(user)
    user.tap do |u|
      u.build_po_info if u.po_info.nil?
    end
  end
end
