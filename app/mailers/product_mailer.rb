class ProductMailer < ApplicationMailer
  def new_product
    @product = params[:product]
    mail(to: @product.email, subject: "Welome to the bussiness, My nigga")
  end
end
