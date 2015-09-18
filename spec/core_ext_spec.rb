require 'spec_helper'
describe PWD::CoreExt do
  let(:raw_subject) { Object.new.tap { |o| o.extend(described_class) } }

  describe '#apply!' do
    subject{ raw_subject.apply! }

    it 'is expected to apply Dir extension' do
      expect(Dir).to receive(:extend).with(PWD::CoreExt::Dir)

      is_expected
    end

  end

end