require './lib/cipher'

describe Cipher do
  describe '#cipher' do
    it 'Will convert entered text to the cipher basis required shift entered' do
      ciphertest = Cipher.new
      expect(ciphertest.cipher('hello', 1)).to eql('ifmmp')
    end

    it 'Will work with shifts of large numbers,caps and without shifting special characters' do
      ciphertest = Cipher.new
      expect(ciphertest.cipher('Hello Hello!', 27)).to eql('Ifmmp Ifmmp!')
    end

    it 'Will work negative shifts' do
      ciphertest = Cipher.new
      expect(ciphertest.cipher('Hello', -25)).to eql('Ifmmp')
    end
  end
end
