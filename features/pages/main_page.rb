module Pages
  module MainPage
    class << self
      def number_button(digit)
        id("com.android.calculator2:id/digit_#{digit}")
      end

      def add_button
        id('com.android.calculator2:id/op_add')
      end

      def sub_button
        id('com.android.calculator2:id/op_sub')
      end

      def mul_button
        id('com.android.calculator2:id/op_mul')
      end

      def div_button
        id('com.android.calculator2:id/op_div')
      end

      def dec_point_button
        id('com.android.calculator2:id/dec_point')
      end

      def clear_button
        no_wait
        if find_elements(:id,'com.android.calculator2:id/clr').size == 0
          nil
        else
          id('com.android.calculator2:id/clr')
        end
      end

      def equal_button
        id('com.android.calculator2:id/eq')
      end

      def delete_button
        id('com.android.calculator2:id/del')
      end

      def result_text
        id('com.android.calculator2:id/result').text
      end

      def advance_button
        id('com.android.calculator2:id/pad_advanced')
      end

      def navigate_to_advance_page
        advance_button.click unless advance_page.active?
      end

      def clear_screen
        unless clear_button.nil?
          clear_button.click
        end
      end

      def click_button(buttons)
        buttons.each do |button|
          case button
          when '+'
            add_button.click
          when '-'
            sub_button.click
          when 'x'
            mul_button.click
          when ':'
            div_button.click
          when '.'
            dec_point_button.click
          when 'delete'
            delete_button.click
          else
            number_button(button).click
          end
        end
      end
    end
  end
end

module Kernel
  def main_page
    Pages::MainPage
  end
end