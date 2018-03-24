module Slugify
  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def find_by_slug(slug)
    self.all.find{|a| a.slug == slug}
  end
end
