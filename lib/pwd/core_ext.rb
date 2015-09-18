module PWD::CoreExt
  require 'pwd/core_ext/dir'
  extend self

  def apply!
    ::Dir.__send__(:extend,::PWD::CoreExt::Dir)
  end

end