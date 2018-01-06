module ApplicationHelper
  
  def message_type(key)
    if key == "notice"
      "warning"
    elsif key == "alert"
      "primary"
    elsif key == "error"
      "danger"
    end
  end
  
  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size - 1)
      yield(tag, classes[index.round])
    end
  end
  
end
