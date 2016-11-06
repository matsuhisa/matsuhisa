Time.zone = "Tokyo"

activate :blog do |blog|
  blog.per_page          = 1
  blog.permalink         = '/articles/{year}/{month}/{title}.html'
  blog.default_extension = '.md'
  blog.sources           = 'articles/{year}/{month}/{title}.html'
  blog.taglink           = 'tags/{tag}.html'
  blog.tag_template      = "tag.html"
end

configure :development do
  activate :livereload
end

configure :build do
end

set :markdown_engine, :redcarpet
set :markdown, tables: true, autolink: true, fenced_code_blocks: true

set :haml, { ugly: true, format: :html5 }

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'master'
end
