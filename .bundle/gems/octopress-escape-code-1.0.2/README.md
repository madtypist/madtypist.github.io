# Octopress Escape Code

Automatically escape code blocks so you can use liquid tags without worry having to surround them with unsightly 
`{% raw %}` and `{% endraw %}` tags. This escapes code block created with `{% highlight %}`, `{% codeblock %}`, code fences,
Markdown indented code blocks, and in-line back tick code tags.

[![Build Status](https://travis-ci.org/octopress/escape-code.svg)](https://travis-ci.org/octopress/escape-code)
[![Gem Version](http://img.shields.io/gem/v/octopress-escape-code.svg)](https://rubygems.org/gems/octopress-escape-code)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-escape-code'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-escape-code

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-escape-code

## Usage

### Code plugins

Before Jekyll parses your pages and posts through Liquid, code is automatically wrapped with `{% raw %}` blocks,
ensuring that their contents aren't parsed by Liquid. For example, a `{% highlight %}` block's contents are wrapped like this.

    {% highlight html %}{% raw %}
    <article>{{ post.content }}</article>
    {% endraw %}{% endhighlight %}

The `{% highlight %}` block is still interpreted by Liquid, but the contents are escaped. This will also escape the 
[Octopress codeblock](https://github.com/octopress/codeblock) plugin.

Some Markdown processors and the [Octopress codefence](https://github.com/octopress/codefence) plugin render code blocks which are
surrounded by three back ticks. These are also wrapped with `{% raw %}` tags.

    {% raw %}
    ```html
    <article>{{ post.content }}</article>
    ```
    {% endraw %}

Liquid sees the raw tags and ignores the contents, but the code fences are still interpreted.

### Standard Markdown code

If you are using Markdown, you may create a code blocks by indenting four spaces or a single tab. These code blocks are escaped like this.

```
{% raw %}
    <article>{{ post.content }}</article>
{% endraw %}
```

You can also define in-line code tags by surrounding text with back ticks, like this ```some code``` which are automatically escaped as
well.

    This inline {% raw %}`<code>`{% endraw %} tag is escaped.

This works with double back tick code tags as well.

### Disable Automatic escaping

To disable code escaping for a single page, add this to the page's YAML front-matter.

    escape_code: fasle

If you prefer, you can enable it on a per page basis, by turning off automatic code escaping in your site's configuration.

    // in Jekyll's _config.yml
    escape_code: false

Then, add `escape_code: true` to the page's YAML front-matter to enable code escaping for a single page.


## Contributing

1. Fork it ( https://github.com/octopress/escape-code/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

