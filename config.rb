Time.zone = "Tokyo"

activate :blog do |blog|
  blog.per_page          = 1
  blog.permalink         = "/articles/{title}"
  blog.default_extension = ".md"
  blog.sources           = 'articles/{title}.html'
end
activate :directory_indexes

configure :development do
  activate :livereload
end

configure :build do
end

set :markdown_engine, :redcarpet
set :markdown, tables: true, autolink: true, fenced_code_blocks: true

set :haml, { ugly: true, format: :html5 }
