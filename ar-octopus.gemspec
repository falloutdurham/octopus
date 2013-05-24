# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ar-octopus"
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thiago Pradi", "Mike Perham", "Gabriel Sobrinho"]
  s.date = "2013-04-19"
  s.description = "This gem allows you to use sharded databases with ActiveRecord. This also provides a interface for replication and for running migrations with multiples shards."
  s.email = ["tchandy@gmail.com", "mperham@gmail.com", "gabriel.sobrinho@gmail.com"]
  s.files = [".gitignore", ".rspec", ".travis.yml", "Appraisals", "Gemfile", "README.mkdn", "Rakefile", "TODO.txt", "ar-octopus.gemspec", "init.rb", "lib/ar-octopus.rb", "lib/octopus.rb", "lib/octopus/association.rb", "lib/octopus/association_collection.rb", "lib/octopus/has_and_belongs_to_many_association.rb", "lib/octopus/logger.rb", "lib/octopus/migration.rb", "lib/octopus/model.rb", "lib/octopus/proxy.rb", "lib/octopus/rails2/association.rb", "lib/octopus/rails2/persistence.rb", "lib/octopus/rails3.1/singular_association.rb", "lib/octopus/rails3.2/persistence.rb", "lib/octopus/rails3/abstract_adapter.rb", "lib/octopus/rails3/arel.rb", "lib/octopus/rails3/log_subscriber.rb", "lib/octopus/rails3/persistence.rb", "lib/octopus/railtie.rb", "lib/octopus/scope_proxy.rb", "lib/octopus/version.rb", "lib/tasks/octopus.rake", "rails/init.rb", "sample_app/.gitignore", "sample_app/.rspec", "sample_app/Gemfile", "sample_app/Gemfile.lock", "sample_app/README", "sample_app/Rakefile", "sample_app/app/controllers/application_controller.rb", "sample_app/app/helpers/application_helper.rb", "sample_app/app/models/item.rb", "sample_app/app/models/user.rb", "sample_app/app/views/layouts/application.html.erb", "sample_app/autotest/discover.rb", "sample_app/config.ru", "sample_app/config/application.rb", "sample_app/config/boot.rb", "sample_app/config/cucumber.yml", "sample_app/config/database.yml", "sample_app/config/environment.rb", "sample_app/config/environments/development.rb", "sample_app/config/environments/production.rb", "sample_app/config/environments/test.rb", "sample_app/config/initializers/backtrace_silencers.rb", "sample_app/config/initializers/inflections.rb", "sample_app/config/initializers/mime_types.rb", "sample_app/config/initializers/secret_token.rb", "sample_app/config/initializers/session_store.rb", "sample_app/config/locales/en.yml", "sample_app/config/routes.rb", "sample_app/config/shards.yml", "sample_app/db/migrate/20100720172715_create_users.rb", "sample_app/db/migrate/20100720172730_create_items.rb", "sample_app/db/migrate/20100720210335_create_sample_users.rb", "sample_app/db/schema.rb", "sample_app/db/seeds.rb", "sample_app/doc/README_FOR_APP", "sample_app/features/migrate.feature", "sample_app/features/seed.feature", "sample_app/features/step_definitions/seeds_steps.rb", "sample_app/features/step_definitions/web_steps.rb", "sample_app/features/support/env.rb", "sample_app/features/support/paths.rb", "sample_app/lib/tasks/.gitkeep", "sample_app/lib/tasks/cucumber.rake", "sample_app/public/404.html", "sample_app/public/422.html", "sample_app/public/500.html", "sample_app/public/favicon.ico", "sample_app/public/images/rails.png", "sample_app/public/index.html", "sample_app/public/javascripts/application.js", "sample_app/public/javascripts/controls.js", "sample_app/public/javascripts/dragdrop.js", "sample_app/public/javascripts/effects.js", "sample_app/public/javascripts/prototype.js", "sample_app/public/javascripts/rails.js", "sample_app/public/robots.txt", "sample_app/public/stylesheets/.gitkeep", "sample_app/script/cucumber", "sample_app/script/rails", "sample_app/spec/models/item_spec.rb", "sample_app/spec/models/user_spec.rb", "sample_app/spec/spec_helper.rb", "sample_app/test/performance/browsing_test.rb", "sample_app/test/test_helper.rb", "sample_app/vendor/plugins/.gitkeep", "spec/config/shards.yml", "spec/migrations/10_create_users_using_replication.rb", "spec/migrations/11_add_field_in_all_slaves.rb", "spec/migrations/12_create_users_using_block.rb", "spec/migrations/13_create_users_using_block_and_using.rb", "spec/migrations/14_create_users_on_shards_of_a_group_with_versions.rb", "spec/migrations/1_create_users_on_master.rb", "spec/migrations/2_create_users_on_canada.rb", "spec/migrations/3_create_users_on_both_shards.rb", "spec/migrations/4_create_users_on_shards_of_a_group.rb", "spec/migrations/5_create_users_on_multiples_groups.rb", "spec/migrations/6_raise_exception_with_invalid_shard_name.rb", "spec/migrations/7_raise_exception_with_invalid_multiple_shard_names.rb", "spec/migrations/8_raise_exception_with_invalid_group_name.rb", "spec/migrations/9_raise_exception_with_multiple_invalid_group_names.rb", "spec/octopus/association_spec.rb", "spec/octopus/log_subscriber_spec.rb", "spec/octopus/logger_spec.rb", "spec/octopus/migration_spec.rb", "spec/octopus/model_spec.rb", "spec/octopus/octopus_spec.rb", "spec/octopus/proxy_spec.rb", "spec/octopus/replication_spec.rb", "spec/octopus/scope_proxy_spec.rb", "spec/octopus/sharded_spec.rb", "spec/spec_helper.rb", "spec/support/active_record/connection_adapters/modify_config_adapter.rb", "spec/support/database_connection.rb", "spec/support/database_models.rb", "spec/support/octopus_helper.rb", "spec/tasks/octopus.rake_spec.rb"]
  s.homepage = "https://github.com/tchandy/octopus"
  s.post_install_message = "Important: If you are upgrading from < Octopus 0.5.0 you need to run:\n$ rake octopus:copy_schema_versions\n\nOctopus now stores schema version information in each shard and migrations will not work properly unless this task is invoked."
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Easy Database Sharding for ActiveRecord"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_development_dependency(%q<rake>, [">= 0.8.7"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_development_dependency(%q<mysql>, ["= 2.8.1"])
      s.add_development_dependency(%q<pg>, [">= 0.11.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 1.3.4"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0.3.8"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.0"])
      s.add_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_dependency(%q<rake>, [">= 0.8.7"])
      s.add_dependency(%q<rspec>, [">= 2.0.0"])
      s.add_dependency(%q<mysql>, ["= 2.8.1"])
      s.add_dependency(%q<pg>, [">= 0.11.0"])
      s.add_dependency(%q<sqlite3>, [">= 1.3.4"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0.3.8"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.0"])
    s.add_dependency(%q<activesupport>, [">= 2.3.0"])
    s.add_dependency(%q<rake>, [">= 0.8.7"])
    s.add_dependency(%q<rspec>, [">= 2.0.0"])
    s.add_dependency(%q<mysql>, ["= 2.8.1"])
    s.add_dependency(%q<pg>, [">= 0.11.0"])
    s.add_dependency(%q<sqlite3>, [">= 1.3.4"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0.3.8"])
  end
end
