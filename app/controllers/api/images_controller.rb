class Api::ImagesController < ApplicationApiController
  def create
    render json: to_json(image_upload)
  end

  def to_json(uploader_response)
    {
      thumbnailUrl: uploader_response.url,
      dataUrl: uploader_response.response["data"]["img_url"]
    }
  end

  def image_upload
    Upload::ImageForrest.new(file_path).upload
  end

  def file_path
    params[:file].path
  end
end
