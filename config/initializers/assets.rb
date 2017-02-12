# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


Rails.application.config.assets.precompile += %w( css/articles/edit.css )
Rails.application.config.assets.precompile += %w( css/articles/index.css )
Rails.application.config.assets.precompile += %w( css/articles/new.css )
Rails.application.config.assets.precompile += %w( css/articles/show.css )

Rails.application.config.assets.precompile += %w( css/users/edit.css )
Rails.application.config.assets.precompile += %w( css/users/favorites.css )
Rails.application.config.assets.precompile += %w( css/users/followers.css )
Rails.application.config.assets.precompile += %w( css/users/follows.css )
Rails.application.config.assets.precompile += %w( css/users/index.css )
Rails.application.config.assets.precompile += %w( css/users/show.css )
