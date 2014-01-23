Tabulous.setup do

  tabs do

    dashboards_tab do
      text          { 'Dashboard' }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('dashboards') }
    end

    dco_resources_tab do
      text          { 'DCO Resources' }
      link_path     { dco_resources_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('dco_resources') }
    end

    #documents_subtab do
    #  text          { 'Documents' }
    #  link_path     { documents_path }
    #  visible_when  { true }
    #  enabled_when  { true }
    #  active_when   { in_action('any').of_controller('documents') }
    #end

    portfolios_tab do
      text          { 'Portfolio' }
      link_path     { portfolios_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('portfolios') }
    end

    newsletters_tab do
      text          { 'Newsletter' }
      link_path     { newsletters_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('newsletters') }
    end

    forums_tab do
      text          { 'Forums' }
      link_path     { forums_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('forums') }
    end

  end

  customize do

    #renderer :bootstrap                      # generate Twitter Bootstrap-style HTML for tabs
    active_tab_clickable = true            # don't allow the selected tab to be clicked
    render_subtabs_when_empty = true


    # which class to use to generate HTML
    # :default, :html5, :bootstrap, or :bootstrap_pill
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#ccc'
    text_color '#444'
    active_tab_color '#fff'
    hover_tab_color '#ddd'
    inactive_tab_color '#aaa'
    inactive_text_color '#888'
  end

end
