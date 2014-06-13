module ActiveAdmin
  module Views
    module Pages
      class Base < Arbre::HTML::Document

        # Override default implementation to add analytics code just after body tag
        def build_page
          within @body do
            # Add google analytics snippet
            text_node analytics_code
            # Original code
            div :id => 'wrapper' do
              build_header
              build_title_bar
              build_page_content
              build_footer
            end
          end
        end

        private

        # Analitics code snippet
        def analytics_code
          snippet = <<HTML
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-11388074-3', 'globalize.herokuapp.com');
  ga('send', 'pageview');
</script>
HTML
          snippet.html_safe
        end

      end
    end
  end
end
