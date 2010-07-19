# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{postageapp}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oleg Khabarov, The Working Group Inc"]
  s.date = %q{2010-07-19}
  s.description = %q{Gem that interfaces with PostageApp.com service to send emails from web apps}
  s.email = %q{oleg@twg.ca}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "generators/postageapp/postageapp_generator.rb",
     "generators/postageapp/templates/initializer.rb",
     "generators/postageapp/templates/postageapp_tasks.rake",
     "lib/generators/postageapp/postageapp_generator.rb",
     "lib/postageapp.rb",
     "lib/postageapp/action_mailer_2/mailer.rb",
     "lib/postageapp/action_mailer_2/request.rb",
     "lib/postageapp/action_mailer_3/mailer.rb",
     "lib/postageapp/action_mailer_3/request.rb",
     "lib/postageapp/configuration.rb",
     "lib/postageapp/mailer.rb",
     "lib/postageapp/request.rb",
     "lib/postageapp/response.rb",
     "lib/postageapp/utils.rb",
     "lib/postageapp/version.rb",
     "postageapp.gemspec",
     "test/configuration_test.rb",
     "test/helper.rb",
     "test/mailer/action_mailer_2/notifier.rb",
     "test/mailer/action_mailer_3/notifier.rb",
     "test/mailer/templates/notifier2/with_body_and_attachment.erb",
     "test/mailer/templates/notifier2/with_html_and_text_views.text.html.erb",
     "test/mailer/templates/notifier2/with_html_and_text_views.text.plain.erb",
     "test/mailer/templates/notifier2/with_simple_view.erb",
     "test/mailer/templates/notifier2/with_text_only_view.text.plain.erb",
     "test/mailer/templates/notifier3/with_html_and_text_views.html.erb",
     "test/mailer/templates/notifier3/with_html_and_text_views.text.erb",
     "test/mailer/templates/notifier3/with_simple_view.erb",
     "test/mailer/templates/notifier3/with_text_only_view.text.erb",
     "test/mailer_test.rb",
     "test/postageapp_test.rb",
     "test/request_integration_test.rb",
     "test/request_test.rb",
     "test/response_test.rb"
  ]
  s.homepage = %q{http://github.com/theworkinggroup/postageapp-gem}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Easier way to send email from web apps}
  s.test_files = [
    "test/configuration_test.rb",
     "test/helper.rb",
     "test/mailer/action_mailer_2/notifier.rb",
     "test/mailer/action_mailer_3/notifier.rb",
     "test/mailer_test.rb",
     "test/postageapp_test.rb",
     "test/request_integration_test.rb",
     "test/request_test.rb",
     "test/response_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["= 1.2.4"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.8"])
    else
      s.add_dependency(%q<json>, ["= 1.2.4"])
      s.add_dependency(%q<mocha>, [">= 0.9.8"])
    end
  else
    s.add_dependency(%q<json>, ["= 1.2.4"])
    s.add_dependency(%q<mocha>, [">= 0.9.8"])
  end
end

