# OpenexchangeratesData
A Ruby wrapper for Openexchangerates API.
Open Exchange Rates provides a simple, lightweight and portable JSON API with live and historical foreign exchange (forex) rates, via a simple and easy-to-integrate API, in JSON format. 

For more information about the Openexchangerates API, visit:

[https://docs.openexchangerates.org/](https://docs.openexchangerates.org/)

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'openexchangerates_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openexchangerates_data

## Usage

First, get your APP ID from [Open Exchange Rates](https://openexchangerates.org/)

Create a Openexchangerates client using your API ID as follows:
```ruby
rate = OpenexchangeratesData::Client.new("API_ID")
```

You can then use that client to get live and historical foreign exchange (forex) rates: 
  ```ruby
  rate.latest
  ```
  or 
  ```ruby
  rate.historical("2016-12-30")
  ```

Get a JSON list of all currency symbols available from the Open Exchange Rates API, along with their full names, for use in your integration:
```ruby
rate.currencies
```



## Development


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/balyam/openexchangerates_data. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

