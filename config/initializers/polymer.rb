class PolymerPath
  def value
    check_env ? element_path : dist_path
  end

  def check_env
    Rails.env.development?
  end

  def element_path
    "../elements/"
  end

  def dist_path
    "../dist/"
  end
end

ELEMENT_PATH = PolymerPath.new.value
