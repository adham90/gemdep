def create_gem(name)
  gem = Rgem.create(name: name)

  5.times do |t|
    gem.dependencies.create(name: "linux-dep-#{name}-#{t}", os_type: :linux)
    gem.dependencies.create(name: "mac-dep-#{name}-#{t}", os_type: :macosx)
  end
end

gems = ["rake", "concurrent-ruby", "i18n", "minitest",
        "thread_safe", "tzinfo", "activesupport", "builder",
        "erubis", "mini_portile2", "nokogiri", "rails-dom-testing",
        "loofah", "rails-html-sanitizer"]

gems.each do |g|
  create_gem(g)
end
