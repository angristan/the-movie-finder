# The Movie Finder

![demo gif](https://media.giphy.com/media/21T333re30gyka4mRq/giphy.gif)

## Installation

- Clone the project
- `bundle install`
- Get your API Key (v3 auth) by signing up to [themoviedb](https://www.themoviedb.org/) site and follow this [tutorial](https://www.viget.com/articles/storing-secret-credentials-in-rails-5-2-and-up/) to set the key

Aften running `rails credentials:show`, you should have something like this:

```
# aws:
#   access_key_id: 123
#   secret_access_key: 345

api_key_v3: xxxy-o-u-r--k-e-yxxxxx

# Used as the base secret for all MessageVerifiers in Rails, including the one protecting cookies.
secret_key_base: t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0t0
```

- Run `rails s` and you are ready to go!
