require 'cinch'
require 'rss'

module RSSReader
    def self.getitems(feed)
        RSS::Parser.parse(feed, true).items
    end

    def self.format(list)
        list.map { |item| "#{Cinch::Formatting.format(:orange, item.title.gsub(/\s+/, ' '))} (#{item.link})" }
    end

    def self.summary(feed)
        format(getitems(feed))
    end
end
