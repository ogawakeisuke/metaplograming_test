class Track < ActiveRecord::Base
  attr_accessible :display_artist_name_en, :display_artist_name_jp, :display_mix_title_en, :display_mix_title_jp, :display_remixer_name_en, :display_remixer_name_jp, :display_title_en, :display_title_jp

  #i18nでのカラム出し分けメソッド
  def display_title(locale)
    locale = locale.to_sym
    case locale
    when :ja then
      self.display_title_jp
    when :en then
      self.display_title_com
    else
      self.display_title_com # default
    end
  end

  def display_mix_title(locale)
    case locale
    when :ja then
      self.display_mix_title_jp
    when :en then
      self.display_mix_title_com
    else
      self.display_mix_title_com # default
    end
  end

  def display_artist_name(locale)
    case locale
    when :ja then
      self.display_artist_name_jp
    when :en then
      self.display_artist_name_com
    else
      self.display_artist_name_com # default
    end
  end

  def display_remixer_name(locale)
    case locale
    when :ja then
      self.display_remixer_name_jp
    when :en then
      self.display_remixer_name_com
    else
      self.display_remixer_name_com # default
    end
  end


end