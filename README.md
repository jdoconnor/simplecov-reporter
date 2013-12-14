send simplecov results as json to an external service (URL post), such as https://github.com/jdoconnor/coverage-logger

To use:

Define the following two ENV variables in your setup (such as .env.test or in your CI config)
```
COVERAGE_REPORTER_NAME=<A UNIQUE NAME FOR THIS PROJECT>
COVERAGE_REPORTER_URL=<URL TO POST TO>
```

Add the formatter to your spec_helper.  In most cases, you will be already using HTMLFormatter, so add Reporter after it

```
# spec_helper.rb
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Reporter,
]
```

At the end of your test, the formatter will post to the URL defined above with the quantitative results of your run, and the name of the project.