module Pages
  module AdvancePage
    class << self
      def sqrt_button
        no_wait
        if find_elements(:id,'com.android.calculator2:id/op_sqrt').size == 0
          nil
        else
          id('com.android.calculator2:id/op_sqrt')
        end
      end

      def active?
        sqrt_button.nil? ? false : true
      end

      def click_button(buttons)
        buttons.each do |button|
          case button
          when 'sqrt'
            sqrt_button.click
          else
            raise Exception, "Invalid button"
          end
        end
      end
    end
  end
end

module Kernel
  def advance_page
    Pages::AdvancePage
  end
end