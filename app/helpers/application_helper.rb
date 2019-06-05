module ApplicationHelper

    # a customized out link function, can add prefix to the weblink
    def link_to_external_lookup(options={})
        #url_prefix = 'https://www.google.com/search?q='
        options[:value].map do |url_fulltext_ssm|
            link_to("#{url_fulltext_ssm}", "#{url_fulltext_ssm}") 
        end
    end
end
