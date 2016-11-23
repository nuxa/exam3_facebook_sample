module TopicsHelper
  def topic_img(topic)
    if topic.image?
      img_url = topic.image
    end
    image_tag(img_url)
  end
end
