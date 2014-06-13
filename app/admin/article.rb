ActiveAdmin.register Article do

  index do
    id_column
    column :title
    translation_status
    translation_status_flags
    actions
  end

  show do
    attributes_table do
      row('Next row hint') { 'Title with default locale using <code>translated_row(:title)</code>'.html_safe }
      translated_row(:title)
      row('Next row hint') { 'Title with different label and initial locale changed to Italian using <code>translated_row(:italian_title, locale: :it, field: :title)</code>'.html_safe }
      translated_row(:italian_title, locale: :it, field: :title)
      row('Next row hint') { 'Body as block using <code>translated_row(:body, inline: false)</code>'.html_safe }
      translated_row(:body, inline: false)
    end
  end

  form do |f|

    f.inputs 'Article details' do
      f.translated_inputs do |t|
        t.input :title
        t.input :body
      end
    end

    f.actions
  end

end
