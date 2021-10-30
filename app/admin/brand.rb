ActiveAdmin.register Brand do

    permit_params :title, :bytitle, :description, :image
  
    index do
      selectable_column
      id_column
      column "title", :title
      column "bytitle", :bytitle
      column "description", :description
      column "Фото", :image do |brand|
        image_tag brand.image_url, class: 'my_image_size' if brand.image_url
      end
      actions
    end
  
    filter :title
    
    form(html: { multipart: true }) do |f|
      f.inputs "Gallery" do
        f.input :title
        f.input :bytitle
        f.input :description
        f.input :image, as: :file
      end
      f.actions
    end
     
  end
    