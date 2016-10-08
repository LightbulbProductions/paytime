# README

reminders:

change the mailer email for devise!


build_stubbed is a method that mimics that it hit db creates objects that can be used and speeds up test suite and is awesome

must use edge branch for administrate

in the admin  & users  dashboard controllers - changed searchability by making all but email false; added: .with_options(searchable: false), to everything in attributes
in the admin/posts = same change in attributes, leaving rationale true only 

^^ probably going to change these bits

Struct for mimicking DB. Awesomeness 

Reminder: Do not put all functionality in background rake task. Use only simple logic; put inside lib/file complicated functions for debugging ease

**regexpal is pretty nifty**

kaminari _paginator.html.erb to override templates_

TODO: change mailer email to proper domain