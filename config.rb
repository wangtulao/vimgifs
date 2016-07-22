###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.json', layout: false

# General configuration
config[:layout] = 'default'

activate :blog do |blog|
  blog.sources = 'gifs/:title.html'
  blog.permalink = '{title}.html'
  blog.layout = 'gifs'
  blog.default_extension = '.erb'
  blog.new_article_template = "#{Dir.pwd}/new_gif_template.erb"
end

activate :directory_indexes
