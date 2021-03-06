module TopHat
  module RobotsHelper

    DEFAULT_DESCRIPTOR = 'robots'

    def noindex(descriptor=DEFAULT_DESCRIPTOR)
      descriptor ||= DEFAULT_DESCRIPTOR
      tag(:meta, :name => descriptor, :content => 'noindex')
    end

    def nofollow(descriptor=DEFAULT_DESCRIPTOR)
      descriptor ||= DEFAULT_DESCRIPTOR
      tag(:meta, :name => descriptor, :content => 'nofollow')
    end

    def canonical(path=nil)
      tag(:link, :rel => 'canonical', :href => path) if path
    end

  end
end
