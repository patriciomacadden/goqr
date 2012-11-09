# goqr [![Build Status](https://travis-ci.org/patriciomacadden/goqr.png)](https://travis-ci.org/patriciomacadden/goqr) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/patriciomacadden/goqr)

### QR codes for ruby/rails using goqr.me API

![patriciomacadden/goqr](http://api.qrserver.com/v1/create-qr-code/?data=https%3A%2F%2Fgithub.com%2Fpatriciomacadden%2Fgoqr&size=256x256)

## Installation

Add it to your Gemfile and run the `bundle` command:

```ruby
gem 'goqr'
```

## Getting started

In rails, you can generate a QR code just using the `goqr` helper method:

```ruby
<%= image_tag goqr(data: 'Hi! goqr is awesome!', size: '128x128') %>
```

## Available options

All available options are the specified by [goqr API documentation](http://qrserver.com/api/documentation/create-qr-code/).

## Gotchas

* If you want to generate a QR code just for text or urls, use the data
  parameter normally:

```ruby
<%= image_tag goqr(data: 'Just text') %>

<%= image_tag goqr(data: 'http://patriciomacadden.com.ar') %>
```

* If you want to generate a QR code for phone numbers, just prepend `TEL:` in
  the data parameter:

```ruby
<%= image_tag goqr(data: 'TEL:+542211234567') %>
```

* If you want to generate a QR code for SMSs, just prepend `SMSTO:` in the data
  parameter, separating the phone number and the text by a `:`:

```ruby
<%= image_tag goqr(data: 'SMSTO:+542211234567:Hi!') %>
```

## Contributing

1. Fork it
2. Create a branch (`git checkout -b my_awesome_branch`)
3. Commit your changes (`git commit -am "Added some magic"`)
4. Push to the branch (`git push origin my_awesome_branch`)
5. Send pull request
