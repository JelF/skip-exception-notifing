class Exception
  def self.skip_notifying
    yield
  rescue self => e
    raise(e.skip_notifying!)
  end

  def skip_notifying!
    @skip_notifying = true
    self
  end

  def skip_notifying?
    !!@skip_notifying
  end
end

begin
  require 'exception_notification'
  ExceptionNotifier.ignore_if { |exception| exception.skip_notifying? }
rescue LoadError => e
  raise(e) unless e['exception_notification']
end
