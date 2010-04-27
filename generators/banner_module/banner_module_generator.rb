class BackgroundGenerator < Rails::Generator::NamedBase
  def migration
    record do |m|
      unless options[:skip_migration]
        m.migration_template('create_banner_module.rb', 'db/migrate', :migration_file_name => 'create_banner_module')
      end
    end
  end

  protected

  def add_options!(opt)
    opt.separator ''
    opt.separator 'Options:'
    opt.on("--skip-migration", "Don't generate a migration for the banner table") do |value|
      options[:skip_migration] = value
    end
  end
end
