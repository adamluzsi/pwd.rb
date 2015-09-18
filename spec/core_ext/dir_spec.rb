require 'spec_helper'
describe PWD::CoreExt::Dir do
  let(:raw_subject) { Object.new.tap { |o| o.extend(described_class) } }

  describe '#root_folder' do
    subject{ raw_subject.root_folder }

    it 'should call PWD#pwd method and return the fetched value' do
      expect(PWD).to receive(:pwd).and_return('/path')

      is_expected.to eq '/path'
    end

  end

end