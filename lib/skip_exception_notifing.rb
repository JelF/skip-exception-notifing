class Exception
  def skip_notifing!
    @skip_notifing = true
  end

  def skip_notifing?
    !!@skip_notifing
  end
end

begin
  require 'exception_notification'
  ExceptionNotifier.ignore_if { |exception| exception.skip_notifing? }
rescue LoadError => e
  raise(e) unless e['exception_notification']
end
