ActiveAdmin.register Product do

  permit_params :category_id, :brand_id, :title, :bytitle, :description,
  :content, :price, :old_price, :status, :image, :hit, :related

  index do
    selectable_column
    id_column
    column "category", :category
    column "brand", :brand_id
    column "title", :title
    column "bytitle", :bytitle
    column "Описание", :description
    column "content", :content
    column "price", :price
    column "old_price", :old_price
    column "status", :status
    column "Фото", :image do |product|
      image_tag product.image_url, class: 'my_image_size' if product.image_url
    end
    column "hit", :hit
    column "Обновлено", :updated_at
    column "Создано", :created_at
    actions
  end

  filter :title

  form(html: { multipart: true }) do |f|
    f.inputs "Group" do
      f.input :category
      f.input :brand_id
      f.input :title
      f.input :bytitle
      f.input :description
      f.input :content
      f.input :price
      f.input :old_price
      f.input :status
      f.input :image, as: :file
      f.input :hit                        
    end

    f.actions
  end

end
