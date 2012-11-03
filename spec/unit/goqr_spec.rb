require 'spec_helper'

include Goqr

describe Goqr do
  describe Goqr::VERSION do
    it 'should be defined' do
      Goqr::VERSION.wont_be_nil
    end
  end

  describe :goqr do
    describe 'when overriding bgcolor parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', bgcolor: '5-5-5'
        url.must_match 'bgcolor=5-5-5'
      end
    end

    describe 'when overriding charset-source parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', :'charset-source' => 'ISO-8859-1'
        url.must_match 'charset-source=ISO-8859-1'
      end
    end

    describe 'when overriding charset-target parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', :'charset-target' => 'ISO-8859-1'
        url.must_match 'charset-target=ISO-8859-1'
      end
    end

    describe 'when overriding color parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', color: '5-5-5'
        url.must_match 'color=5-5-5'
      end
    end

    describe 'when overriding data parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing'
        url.must_match 'data=testing'
      end

      it 'should be encoded' do
        url = Goqr.goqr data: 'testing goqr'
        url.must_match 'data=testing+goqr'
      end
    end

    describe 'when overriding ecc parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', ecc: 'M'
        url.must_match 'ecc=M'
      end
    end

    describe 'when overriding format parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', format: 'gif'
        url.must_match 'format=gif'
      end
    end

    describe 'when overriding margin parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', margin: 2
        url.must_match 'margin=2'
      end
    end

    describe 'when overriding size parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', size: '50x50'
        url.must_match 'size=50x50'
      end
    end

    describe 'when overriding qzone parameter' do
      it 'should be replaced' do
        url = Goqr.goqr data: 'testing', qzone: 1
        url.must_match 'qzone=1'
      end
    end
  end
end
