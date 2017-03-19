module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end
  def field_errors(object, column)
    errors = object.errors[column]
    if errors.present?
      content_tag(:p, errors.to_sentence, class: "field-error")
    end
  end
end
