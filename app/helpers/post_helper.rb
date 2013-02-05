module PostHelper
def render_markdown (str)
	return Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true).render(str).html_safe
end
end
