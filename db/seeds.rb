# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_gem(name)
  gem = Rgem.create(name: name)

  50.times do |t|
    gem.dependencies.create(name: "dep-#{name}-#{t}")
  end
end

gems = ["rake", "concurrent-ruby", "i18n", "minitest",
        "thread_safe", "tzinfo", "activesupport", "builder",
        "erubis", "mini_portile2", "nokogiri", "rails-dom-testing",
        "loofah", "rails-html-sanitizer", "actionview", "rack", "rack-test",
        "actionpack", "nio4r", "websocket-extensions", "websocket-driver",
        "actioncable", "globalid", "activejob", "mime-types-data",
        "mime-types", "mail", "actionmailer", "activemodel", "arel",
        "activerecord", "byebug", "multi_xml", "httparty", "deplist",
        "diff-lcs", "ffi", "rb-fsevent", "rb-inotify", "listen",
        "method_source", "pg", "puma", "bundler", "thor",
        "railties", "sprockets", "sprockets-rails", "rails",
        "rspec-support", "rspec-core", "rspec-expectations",
        "rspec-mocks", "rspec-rails", "spring",
        "spring-watcher-listen", "sqlite3"]

gems.each do |g|
  create_gem(g)
  create_gem("a_#{g}")
  create_gem("b_#{g}")
  create_gem("c_#{g}")
  create_gem("d_#{g}")
  create_gem("e_#{g}")
  create_gem("f_#{g}")
  create_gem("g_#{g}")
end
