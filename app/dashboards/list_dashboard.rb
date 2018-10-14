require "administrate/base_dashboard"

class ListDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    comments: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::String,
    website: Field::String,
    fromAddress: Field::String,
    category: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    spam: Field::Boolean,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :posts,
    :comments,
    :spam,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :posts,
    :comments,
    :id,
    :name,
    :description,
    :website,
    :fromAddress,
    :category,
    :created_at,
    :updated_at,
    :spam,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :posts,
    :comments,
    :name,
    :description,
    :website,
    :fromAddress,
    :category,
    :spam,
  ].freeze

  # Overwrite this method to customize how lists are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(list)
    list.name || "List ##{list.id}"
  end
end
