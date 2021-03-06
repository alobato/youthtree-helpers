module YouthTree
  module Helpers
    module AssetsHelper
      
      # Returns the content to be placed in the header.
      def extra_head_content(*args, &blk)
        content_for(:extra_head, *args, &blk)
      end
      
      def extra_footer_content(*args, &blk)
        content_for(:extra_footer, *args, &blk)
      end
      
      # Equiv. to include_javascripts in the header
      def has_jammit_js(*args)
        content_for :extra_footer, include_javascripts(*args)
        nil
      end

      # Equiv. to include_stylesheets in the header
      def has_jammit_css(*args)
        content_for :extra_head, include_stylesheets(*args)
        nil
      end

      # Equiv. to javascript_include_tag in the header
      def has_js(*args)
        content_for :extra_footer, javascript_include_tag(*args)
        nil
      end

      # Equiv. to stylesheet_link_tag in the header
      def has_css(*args)
        content_for :extra_head, stylesheet_link_tag(*args)
        nil
      end
      
    end
  end
end