describe 'Gem logic' do
  GenericException = Class.new(StandardError)

  describe 'Exception#skip_notifying' do
    subject(:exception) do
      begin
        raise GenericException
      rescue => exception
        exception.skip_notifying!
      end
    end

    it 'is marked to be skipped' do
      expect(exception).to be_skip_notifying
    end

    it 'is not notified by ExceptionNotifier' do
      expect(ExceptionNotifier.notify_exception(exception)).to be_falsey
    end
  end

  describe 'Exception.skip_notifying' do
    it 'skips matching exception notifying' do
      begin
        GenericException.skip_notifying { raise GenericException }
      rescue GenericException => exception
        expect(exception).to be_skip_notifying
      end
    end

    it 'does not skip other exceptions' do
      begin
        GenericException.skip_notifying { raise 'another exception' }
      rescue => exception
        expect(exception).not_to be_skip_notifying
        expect(exception.message).to eq 'another exception'
      end
    end
  end
end
