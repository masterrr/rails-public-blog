module PostHelper
def markdown(str)
	text = Redcarpet::Markdown.new(MdEmoji::Render, autolink: true).render(str).html_safe
end
end
