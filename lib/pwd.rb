module PWD

  require 'pwd/version'
  require 'pwd/core_ext'

  extend self

  def pwd

    if rails_present?
      Rails.root.to_s
    elsif ENV['BUNDLE_GEMFILE']
      ENV['BUNDLE_GEMFILE'].split(File::Separator)[0..-2].join(File::Separator)
    else
      Dir.pwd.to_s
    end

  end

  def join(*path_parts)
    File.join(pwd,*path_parts)
  end

  def rails_present?
    !!(defined?(Rails) && !Rails.root.nil?)
  end

end
