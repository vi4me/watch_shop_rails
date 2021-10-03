ActiveAdmin.register Category do

  permit_params :title, :bytitle, :keywords, 
                        :description, :ancestry

  index do
    selectable_column
    id_column
    column "Название", :title
    column "By Название", :bytitle
    column "keywords", :keywords
    column "Описание", :description
    column "ancestry", :ancestry 
    column "Обновлено", :updated_at
    column "Создано", :created_at
    actions
  end

  filter :title

  form(html: { multipart: true }) do |f|
    f.inputs "Group" do
      f.input :title
      f.input :bytitle
      f.input :description
      f.input :keywords
      f.input :ancestry
    end
  
    f.actions
  end
   
end
  