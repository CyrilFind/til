# I18n

I18n handles internationalisation in Rails, with `I18n.translate` or `I18n.t`.

And I realized that `t` alone also works in views, and actually works better:

# Localizing html text with a link

I found the easiest way to localize a html text containing a link is this:

In `en.yml`:

```` Yml
  message:
    message_html: "This message contains an %{link}. Click it !"
    link_text: "awesome link"
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

> This message contains an \<a href="https://www.coolwebsite.com" > awesome link \</a> . Click it !

Which is less cool... I can't explain it though 😕
