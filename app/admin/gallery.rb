ActiveAdmin.register Gallery do

  permit_params :product_id, :image

  index do
    selectable_column
    id_column
    column "product", :product
    column "Фото", :image do |product|
      image_tag product.image_url, class: 'my_image_size'
    end
    actions
  end

  filter :title
  
  form(html: { multipart: true }) do |f|
    f.inputs "Gallery" do
      f.input :product
      f.input :image, as: :file
    end
  
    f.actions
  end
   
end
  