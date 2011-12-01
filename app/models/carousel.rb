class Carousel < Noodall::Component

  key :link_text, String

  many :multi_images do
    def not_empty
      reject{|c| c.asset.nil? }
    end
  end

end
