# frozen_string_literal: true

require_relative 'vietnamese_accentless/version'
require 'vietnamese_accentless/constants'

module VietnameseAccentless
  class Error < StandardError; end

  def self.convert(string)
    string = string.tr(A_LINE_DOWNCASE, 'a')
    string = string.tr(A_LINE_UPCASE, 'A')
    string = string.tr(O_LINE_DOWNCASE, 'o')
    string = string.tr(O_LINE_UPCASE, 'O')
    string = string.tr(E_LINE_DOWNCASE, 'e')
    string = string.tr(E_LINE_UPCASE, 'E')
    string = string.tr(U_LINE_DOWNCASE, 'u')
    string = string.tr(U_LINE_UPCASE, 'U')
    string = string.tr(I_LINE_DOWNCASE, 'i')
    string = string.tr(I_LINE_UPCASE, 'I')
    string = string.tr(Y_LINE_DOWNCASE, 'y')
    string = string.tr(Y_LINE_UPCASE, 'Y')
    string = string.tr(D_LINE_DOWNCASE, 'd')
    string.tr(D_LINE_UPCASE, 'D')
  end
end
