ActiveAdmin.register RelatedProduct do

    permit_params :product_id, :related_id

    index do
      selectable_column
      column "product", :product
      column "related", :related
    end

    filter :title
    
    form(html: { multipart: true }) do |f|
      f.inputs "Related_products" do
        f.input :product
        f.input :related
      end
      f.actions
    end
   
end
  