class Exception
  def skip_notifying!
    @skip_notifying = true
  end

  def skip_notifying?
    !!@skip_notifying
  end
end

begin
  require 'exception_notification'
  ExceptionNotifier.ignore_if { |exception| exception.skip_notifiyng? }
rescue LoadError => e
  raise(e) unless e['exception_notification']
end
