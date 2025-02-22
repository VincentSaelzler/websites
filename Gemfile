# required, otherwise bundler just looks locally
source "https://rubygems.org"


# 2024-02-10 ROLLED BACK JEKYLL VERSION TO FIX BUG
# https://github.com/jekyll/jekyll/issues/9312
# gem "jekyll", "~> 4.3.3"
# gem "jekyll", "~> 4.1.1"
# gem "jekyll"

# gem "jekyll", "~> 4.4.1" # 2025-02-22
# gem "jekyll"
# 2024-02-18
# https://github.com/jekyll/jekyll/issues/8523
# needed to explicitly include this gem, otherwise 
# `bundle exec jekyll serve` command failed

# # local http server
# gem "webrick"

# theme
gem "minimal-mistakes-jekyll"

# plugins
group :jekyll_plugins do
  # atom (rss) feed
  gem "jekyll-feed"
end
