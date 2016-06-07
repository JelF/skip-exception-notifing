# skip-exception-notifying
This gem monkey-matches `::Exception` to add `skip_exception_notifying?` flag there.

## Instalation
Add `gem 'skip-exception-notifying'` to your Gemfile

## Usage
```
  begin
    # Some bad stuff
  rescue SomeException => e
    raise(e.skip_notifying!)
  end
```

Or same
```
  SomeException.skip_notifying do
    # Some bad stuff
  end
```

## Details
Only ExceptionNotifier is supported now. Requests for other engines are welcome
