require 'erb'

TEMPLATE = "ads.html.erb"

class Ad
  attr_accessor :title, :text, :affiliate, :pretty
  def link(type = :affiliate)
    case type
    when :affiliate
      self.affiliate
    when :pretty
      self.pretty
    end
  end
end


@ads = []

5.times do
  ad = Ad.new
  ad.title = "Kermit The Frog"
  ad.text = "Played with style and aplomb by the incomparable Elizabeth 'Tina' Fey"
  ad.affiliate = "http://giles.30rock.com"
  ad.pretty = "http://30rock.com"

  @ads << ad
end

puts ERB.new(File.read(TEMPLATE)).result(binding)
