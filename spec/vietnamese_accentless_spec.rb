# frozen_string_literal: true

RSpec.describe VietnameseAccentless do
  it 'has a version number' do
    expect(VietnameseAccentless::VERSION).not_to be nil
  end

  it 'cut accent from Vietnamese string' do
    aggregate_failures do
      expect(VietnameseAccentless.convert('Đại học Mở Hà Nội')).to eq 'Dai hoc Mo Ha Noi'
      expect(VietnameseAccentless.convert('Những ngày tháng khó khăn')).to eq 'Nhung ngay thang kho khan'
      expect(VietnameseAccentless.convert('Bật công tắc đèn')).to eq 'Bat cong tac den'
      expect(VietnameseAccentless.convert('Đỗ chứng chỉ tiếng Nhật')).to eq 'Do chung chi tieng Nhat'
      expect(VietnameseAccentless.convert('Ấn vào cái nút này, đúng rồi')).to eq 'An vao cai nut nay, dung roi'
      expect(VietnameseAccentless.convert('Ứng tiền lương')).to eq 'Ung tien luong'
      expect(VietnameseAccentless.convert('Ống nước')).to eq 'Ong nuoc'
      expect(VietnameseAccentless.convert('Ánh trăng')).to eq 'Anh trang'
      expect(VietnameseAccentless.convert('ĐỖ ĐỨC TƯỜNG')).to eq 'DO DUC TUONG'
      expect(VietnameseAccentless.convert('LÊ MINH THIỆN TOÀN')).to eq 'LE MINH THIEN TOAN'
    end
  end

  it 'cut accent from Vietnamese string contains other languages' do
    expect(VietnameseAccentless.convert('Chicken nghĩa là con gà')).to eq 'Chicken nghia la con ga'
    expect(VietnameseAccentless.convert('日本へ行きたい')).to eq '日本へ行きたい'
    expect(VietnameseAccentless.convert('消しゴム nghĩa là cục gôm')).to eq '消しゴム nghia la cuc gom'
    expect(VietnameseAccentless.convert('Cách nói 你好 trong tiếng Trung')).to eq 'Cach noi 你好 trong tieng Trung'
    expect(VietnameseAccentless.convert('안녕 nghĩa là gì?')).to eq '안녕 nghia la gi?'
  end
end
