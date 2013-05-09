class Track < ActiveRecord::Base
  attr_accessible :display_artist_name_en, :display_artist_name_jp, :display_mix_title_en, :display_mix_title_jp, :display_remixer_name_en, :display_remixer_name_jp, :display_title_en, :display_title_jp
  
  #rails流initializeらしい
  after_initialize :init

  def self.define_display_method(method_name)
    define_method "display_#{method_name}" do |locale|
      locale = locale.to_sym    
      case locale
      when :ja then
        self.send("display_#{method_name}_jp")
      when :en then
        self.send("display_#{method_name}_com")
      else
        self.send("display_#{method_name}_com") # default
      end 
    end
  end

private
  def init
    puts self.class
    self.attribute_names.grep(/display_(.*)_/){Track.define_display_method $1}
  end

end
