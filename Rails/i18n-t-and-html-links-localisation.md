# I18n

I18n handles internationalisation in Rails, with `I18n.translate` or `I18n.t`.

And I realized that `t` (or `translate`) alone also works in views, and actually works better:

# Localizing html text with a link

I found the easiest way to localize a html text containing a link is this:

In `en.yml`:

```` Yml
  message:
    message_html: "This message contains %{link}. Click it !"
    link_text: "an awesome link"
    url: "https://www.coolwebsite.com"
````

And in `view.html.erb`:

```` erb
<div>
  <p>
    <% I18n.locale = @locale %>
    <%= t('message.message_html', link: link_to(t('message.link_text'), t('message.url'))) %>
  </p>
</div>
```` 

This would work:

> This message contains an [awesome link](https://www.coolwebsite.com). Click it !

whereas using `I18n.t` would return:

> This message contains \<a href="https://www.coolwebsite.com" > an awesome link \</a> . Click it !

Which is less cool...

That's because 
[`t` and `translate` are TranslationHelpers methods](http://api.rubyonrails.org/v5.1/classes/ActionView/Helpers/TranslationHelper.html#method-i-translate)
and thus apply additional functions like `html_safe`
