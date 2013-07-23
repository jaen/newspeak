module Newspeak
  module TranslationHelper
    include ActionView::Helpers::TranslationHelper

    # delegates to I18n.localize
    def localize(*args)
      I18n.localize(*args)
    end
    alias :l :localize

    # delegates to I18n.translate, while also providing key scoping
    def translate(key, options={})
      scoped_key = scope_key_by_partial(key)

      I18n.translate(scoped_key, options)
    end
    alias :t :translate
  end
end
