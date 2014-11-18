module ApplicationHelper
  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true, hard_wrap: true)
    @markdown.render(content).html_safe
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    if column == sort_column
      css_class = sort_direction == "asc" ? "current fa fa-chevron-up" : "current fa fa-chevron-down"
    else
      css_class = nil
    end
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
  end
end
