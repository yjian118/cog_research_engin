module ApplicationHelper

    # a customized out link function, can add prefix to the weblink
    def link_to_external_lookup(options={})
        url_prefix = 'http://www.amazon.com/gp/search/ref=sr_adv_b/?field-isbn='
        options[:value].map do |isbn|
            link_to("#{isbn}", "#{url_prefix}#{isbn}") << ' (Amazon)'
        end
    end

    #rend local png images
    def render_thumbnail(document, options)
        return unless document[:file_id].present?
        image_tag(
          "#{image_server}/#{document.id}/#{document.first(:file_id)}.png",
          options.merge(alt: presenter(document).document_heading)
        )
    end
end
