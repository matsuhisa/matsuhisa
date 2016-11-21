Time.zone = "Tokyo"

activate :blog do |blog|
  blog.per_page          = 1
  blog.permalink         = '/articles/{year}/{month}/{title}.html'
  blog.default_extension = '.md'
  blog.sources           = 'articles/{year}/{month}/{title}.html'
  blog.taglink           = 'tags/{tag}.html'
  blog.tag_template      = "tag.html"

  blog.paginate = true
  blog.per_page = 5
end

configure :development do
  activate :livereload
end

set :markdown_engine, :redcarpet
set :markdown, tables: true, autolink: true, fenced_code_blocks: true, smartypants: true
set :haml, { ugly: true, format: :html5 }

activate :syntax, line_numbers: false

configure :build do
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'master'
  # git remote add public git@github.com:matsuhisa/matsuhisa.github.io.git
  deploy.remote = 'public'
end

set :site_title, 'メモ帳'
set :site_url, 'https://matsuhisa.github.io/'
