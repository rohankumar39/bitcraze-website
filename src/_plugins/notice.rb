module Jekyll
  class NoticeInfo < Liquid::Tag

    # Use this tag to display an info block
    #
    # Takes 1 arguments
    # The text
    #
    # Example
    # {% notice_info My message %}

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        '<div class="alert alert-success"><i class="fa fa-info fa-fw"></i>%1$s</div>' % [@text]
    end
  end

  class NoticeImportant < Liquid::Tag
    # Use this tag to display an info block
    #
    # Takes 1 arguments
    # The text
    #
    # Example
    # {% notice_info My message %}

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
        '<div class="alert alert-danger"><i class="fa fa-exclamation-triangle fa-fw"></i>%1$s</div>' % [@text]
    end
  end
end

Liquid::Template.register_tag('notice_info', Jekyll::NoticeInfo)
Liquid::Template.register_tag('notice_important', Jekyll::NoticeImportant)