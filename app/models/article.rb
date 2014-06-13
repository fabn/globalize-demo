class Article < ActiveRecord::Base
  attr_accessible :title, :body, :translations_attributes

  # Translated fields with globalize and for active admin
  active_admin_translates :title, :body do
    # Here I'm inside the Person::Translation which is an AR class
    validates_presence_of :title, :body
  end

end
