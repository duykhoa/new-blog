class Api::ImagesController < ApplicationApiController
  before_action :verify_token, only: [ :create ]

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
