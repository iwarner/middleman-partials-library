##
# Helpers
#
# @author   Ian Warner <ian.warner@drykiss.com>
# @category helper
##

##
# Module Helpers
##
module Helpers

    ##
    # Proxy partial method
    ##
    def codeBlender( name, type, locals = false )

        # Extra folder
        folder = ( type.include? "/" ) ? "#{ name }" : "#{ name }/#{ name }"

        # Partial return
        partial "#{ config[ :partials_dir ] }/#{ type }/#{ folder }.haml", locals: locals

    end

    ##
    # Whether to translate a string of text from the Current Page Data
    ##
    def string( text )

        # Need to make sure that the translation is activated
        if defined? t
            text.is_a?( Symbol ) ? t( text ) : text
        else
            text
        end

    end

    ##
    # Call Link
    # Strip the spaces from the number
    ##
    def callLink( number )
        link_to number, "tel:#{ number }"
    end

    ##
    # IMDB Film Lookup
    ##
    def imdb( film, year = nil )

        url  = "http://www.omdbapi.com"
        json = JSON.parse( open( url + "?t=" + URI.encode( film ) ) { | x | x.read } )

    end

# def page_title
#     yield_content(:title)
#   end

#   def page_header(title, summary = nil)
#     partial "partials/page_header", locals: { title: title, summary: summary }
#   end

#   def section
#     (yield_content(:section) || title || "")
#   end

#   def url_with_host(path)
#     host_with_port + path
#   end

#   def host_with_port
#     [config[:host], config[:port]].compact.join(':')
#   end

#   def email_url
#     "mailto:ross@rossta.net"
#   end

#   def signup_form_url
#     "//rossta.us6.list-manage.com/subscribe/post?u=8ce159842b5c98cecb4ebdf16&amp;id=#{config[:mailchimp_form_id]}"
#   end

#   def tweet_link_to(text, params = {})
#     uri = Addressable::URI.parse("https://twitter.com/intent/tweet")
#     uri.query_values = params
#     link_to text, uri, target: "_blank"
#   end

#   def top_tags
#     blog('blog').tags.sort_by { |t, a| -a.count }
#   end

#   def top_articles
#     blog('blog').articles.select { |a| a.data[:popular] }.sort_by { |a| a.data[:popular] }
#   end

#   def current_page_tags
#     Array(current_page.data[:tags])
#   end

#   def nozen?
#     @nozen
#   end

#   def nozen!
#     @nozen = true
#   end

end