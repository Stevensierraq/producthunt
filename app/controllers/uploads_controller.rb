class UploadsController < ApplicationController
  def new
  end

  def create
  	@upload = Uploads.create(upload_aparams)
  	if @upload.save
		render json: { messages: "success", fileId: @upload.id }, :status => 200			
		redirect_to products_path, notice: "Producto publicado exitosamente :)"
	else
		render json: { messages: @product.errors.full.messages.join(',')}, :status =>400
		render :new
		end
  end
end
