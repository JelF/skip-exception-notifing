class Exception
  def skip_notifiyng!
    @skip_notifiyng = true
  end

  def skip_notifiyng?
    !!@skip_notifiyng
  end
end

begin
  require 'exception_notification'
  ExceptionNotifier.ignore_if { |exception| exception.skip_notifiyng? }
rescue LoadError => e
  raise(e) unless e['exception_notification']
end
