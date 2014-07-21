# Noterizer

A demo Rails 4 application that backs my 'Fronting an External API with Ruby on Rails' tutorial.

## About

Noterizer's `tutorial` branch can be used with the tutorial.

Noterizer's `master` branch demos a working RoR application that fronts multiple requests to an external XML-based API with a single JSON endpoint.

Features of note:

* RSpec 3 tests
* WebMock stubs of HTTP transactions for testing purposes
* A simple `Note` model layer that does not make use of a relational database
* Jbuilder-based JSON view templates
