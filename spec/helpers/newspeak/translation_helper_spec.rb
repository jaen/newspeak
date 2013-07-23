require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the TranslationHelper. For example:
#
# describe TranslationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
module Newspeak
  describe TranslationHelper do
    before(:all) do
      redis = Redis.new
      I18n.backend = I18n::Backend::Redis.new

      @translations = { :some => { :key => 'some_value' } }
    end

    
    context 'without any configuration' do
      describe '#translate defers to the I18n verbatim' do
        before(:each) do
          I18n.backend.store_translations('en', @translations)
        end

        it 'returns an existing key' do
          key = 'some.key'
          helper.translate(key).should == translation_for(key)
        end

        it 'returns failure for non-existing key' do
          key = 'some.nonexistent.key'
          helper.translate(key).should == "translation missing: en.#{key}" # fix it for better
        end
      end
    end
  end
end
