ActiveAdmin.register Article do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, comments_attributes: [:id, :title, :_destroy, reviews_attributes: [:id, :name, :_destroy]]
  #
  # or
  #
  # permit_params do
  #   permitted = [:title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :title, as: :string, input_html: { class: 'address-autocomplete' }
    end
    f.inputs do
      f.has_many :comments,
                 new_record: true,
                 remove_record: false do |b|
        b.input :title
        b.has_many :reviews,
                 new_record: true,
                 remove_record: false do |r|
        r.input :name
      end
      end
    end
    f.actions
  end
  
end
