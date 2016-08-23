module TopicsHelper
  def topic_img(topic)
    if topic.image?
      img_url = topic.image
    else
      img_url = 'no_image.png'
    end
    image_tag(img_url)
  end
end
