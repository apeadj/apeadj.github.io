class Time
  def to_ms
    (self.to_f * 1000.0).to_i
  end
end

(1..142).each do |index|
	File.open("logotipo-#{Time.now.to_ms}-#{index}.md", "w") do |f|
		lines = <<-TEXT
---
caption: #what displays in the portfolio grid:
  title: #{index}
  subtitle: subtitle
  thumbnail: assets/img/portfolio/#{index}.jpg

#what displays when the item is clicked:
title: #{index}
subtitle: subtitle lorem ipsum dolor sit amet consectetur.
image: assets/img/portfolio/#{index}.jpg #main image, can be a link or a file in assets/img/portfolio
alt: image alt text
---
		TEXT
		f.write(lines)
	end
end
