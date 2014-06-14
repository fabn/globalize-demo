class Article < ActiveRecord::Base
  attr_accessible :title, :body, :translations_attributes

  # Translated fields with globalize and for active admin
  active_admin_translates :title, :body

end
