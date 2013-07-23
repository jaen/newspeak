module UtilHelper
  def get_path(from_hash, *path, default:nil)
    #path = path[0] if path.length == 1 && path[0].class == Array

    path.reduce(from_hash) do |hash, key|
      if res = hash[key] then
        res
      else
        return default
      end
    end
  end

  def translation_for(key)
    get_path(@translations, *key.split('.').map(&:to_sym))
  end
end