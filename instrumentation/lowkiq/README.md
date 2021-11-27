# OpenTelemetry Lowkiq Instrumentation

The Lowkiq instrumentation is a community-maintained instrumentation for the [Lowkiq][lowkiq-home] Ruby jobs system.

## How do I get started?

Install the gem using:

```
gem install opentelemetry-instrumentation-lowkiq
```

Or, if you use [bundler][bundler-home], include `opentelemetry-instrumentation-lowkiq` in your `Gemfile`.

## Usage

To use the instrumentation, call `use` with the name of the instrumentation:

```ruby
OpenTelemetry::SDK.configure do |c|
  c.use 'OpenTelemetry::Instrumentation::Lowkiq'
end
```

Alternatively, you can also call `use_all` to install all the available instrumentation.

```ruby
OpenTelemetry::SDK.configure do |c|
  c.use_all
end
```
## Examples

Example usage can be seen in the `./example/lowkiq.rb` file [here](https://github.com/open-telemetry/opentelemetry-ruby/blob/main/instrumentation/lowkiq/example/lowkiq.rb)

## Development

You'll need Redis installed locally to run the test suite. Once you've
installed it, it will start and stop automatically when you run `rake`.

```
redis-server test/redis.conf
```

## How can I get involved?

The `opentelemetry-instrumentation-lowkiq` gem source is [on github][repo-github], along with related gems including `opentelemetry-api` and `opentelemetry-sdk`.

The OpenTelemetry Ruby gems are maintained by the OpenTelemetry-Ruby special interest group (SIG). You can get involved by joining us in [GitHub Discussions][discussions-url] or attending our weekly meeting. See the [meeting calendar][community-meetings] for dates and times. For more information on this and other language SIGs, see the OpenTelemetry [community page][ruby-sig].

## License

The `opentelemetry-instrumentation-lowkiq` gem is distributed under the Apache 2.0 license. See [LICENSE][license-github] for more information.

[lowkiq-home]: https://github.com/bia-technologies/lowkiq
[bundler-home]: https://bundler.io
[repo-github]: https://github.com/open-telemetry/opentelemetry-ruby
[license-github]: https://github.com/open-telemetry/opentelemetry-ruby/blob/main/LICENSE
[ruby-sig]: https://github.com/open-telemetry/community#ruby-sig
[community-meetings]: https://github.com/open-telemetry/community#community-meetings
[discussions-url]: https://github.com/open-telemetry/opentelemetry-ruby/discussions
