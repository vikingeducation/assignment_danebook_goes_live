module StaticPagesHelper

  def nav_link(link_text, link_path, options = {})

    # Determine if link is to active page (sets gray background)
    class_name = current_page?(link_path) ? 'active' : nil

    # Add a badge to the link, and extra classes to the li
    if options[:badge]
      badge = " <span class='badge'>#{options[:badge]}</span>"
      link_text += " #{badge}"
    elsif options[:class]
      class_name = "#{class_name} #{options[:class]}"
    end  
     
    # Generate li with nested link  
    content_tag(:li, :role => "presentation", :class => class_name) do   
      link_to(link_path) do
        link_text.html_safe
      end
    end

  end

end
