require 'spec_helper'

describe PWD do
  let(:raw_subject) { Object.new.tap { |o| o.extend(described_class) } }

  let(:rails) { double('rails', root: 'rails_root_folder_path') }

  describe '#rails_present?' do
    subject { raw_subject.rails_present? }

    context 'when rails module not present' do
      it { is_expected.to be false }
    end

    context 'when rails module present' do
      before { stub_const("Rails", rails) }

      context 'and rails has root' do
        before { allow(rails).to receive(:root).and_return('rails_project_root') }

        it { is_expected.to be true }
      end

      context 'and rails dont have root setted' do
        before { allow(rails).to receive(:root).and_return(nil) }

        it { is_expected.to be false }
      end

    end

  end

  describe '#pwd' do
    subject { raw_subject.pwd }

    context 'when rails present in the current env' do
      before { stub_const("Rails", rails) }

      it { is_expected.to eq 'rails_root_folder_path' }
    end

    context 'when rails is not present' do

      context 'and bundler already set the env file with the gem file path' do
        before { allow(ENV).to receive(:[]).with('BUNDLE_GEMFILE').and_return('/path/to/folder/Gemfile') }

        it { is_expected.to eq '/path/to/folder' }
      end

      context 'when bundler is not used and there is no env variable' do
        before { allow(ENV).to receive(:[]).with('BUNDLE_GEMFILE').and_return(nil) }

        it { is_expected.to eq Dir.pwd }
      end

    end

  end

  describe '#join' do
    subject { raw_subject.join(*path_parts) }

    context 'when array of path part is given' do
      let(:path_parts) { %w(hello world) }

      it { is_expected.to eq File.join(raw_subject.pwd,'hello','world') }
    end

    context 'when string path given' do
      let(:path_parts){'/hello/world'}

      it { is_expected.to eq File.join(raw_subject.pwd,'hello','world') }
    end

  end

end
