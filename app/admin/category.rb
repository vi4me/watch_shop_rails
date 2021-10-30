ActiveAdmin.register Category do

  permit_params :title, :bytitle, :keywords, 
                        :description

  sortable tree: true,
    sorting_attribute: :ancestry,
    sortable: true
                        
  index :as => :sortable do
    label :title
    actions
  end

  index do
    selectable_column
    id_column
    column "Название", :title
    column "By bytitle", :bytitle
    column "keywords", :keywords
    column "Описание", :description
    column "Обновлено", :updated_at
    column "Создано", :created_at
    actions
  end

  # filter :title

  form(html: { multipart: true }) do |f|
    f.inputs "Group" do
      f.input :title
      f.input :bytitle
      f.input :description
      f.input :keywords
    end
  
    f.actions
  end

end
  