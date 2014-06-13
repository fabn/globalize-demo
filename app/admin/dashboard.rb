ActiveAdmin.register_page 'Dashboard' do

  menu :priority => 1, :label => proc { I18n.t('active_admin.dashboard') }

  content :title => proc { I18n.t('active_admin.dashboard') } do
    div :class => 'blank_slate_container', :id => 'dashboard_default_message' do
      span :class => 'blank_slate' do
        span 'Welcome to Active Admin Globalize demo'
        small "This is a demo page for #{link_to('activeadmin-globalize', 'https://github.com/fabn/activeadmin-globalize')} gem".html_safe
        small ("This gem provides integration between #{link_to 'active_admin', 'https://github.com/gregbell/active_admin'} " <<
                  "and #{link_to 'globalize', 'https://github.com/globalize/globalize'} gems.").html_safe
      end
    end

  end
end
