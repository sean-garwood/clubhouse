# clubhouse

Practice authentication mechanisms in Ruby on Rails.

## Assignment

[assignment](https://www.theodinproject.com/lessons/ruby-on-rails-members-only#assignment)

Build an exclusive clubhouse

* members can write anonymous posts.
* Inside the clubhouse, members can see who the author of a post is
* Outside, they can only see the story and wonder who wrote it.

If you want to add your own stylistic flourishes, consider it extra credit.

### Basic setup

[basic setup
instructions](https://www.theodinproject.com/lessons/ruby-on-rails-members-only#basic-setup)

1. Think about and spec out how to set up your data models for this application. You’ll need users with the usual identification attributes like name, email and password. They’ll need to create posts as well.
1. Create your new members-only Rails app and GitHub repo. Update your README.
1. Add devise to your Gemfile and install it in your app using set up instructions
on the Devise README.
1. Install `Responders` gem

* to get Devise to play nicely with Turbo Drive.
* Make sure that in addition to adding the gem to your Gemfile that you also run the install generator.
* specify delete requests on your links/buttons for signing the user out. More detailed information can be found in Devise’s Guide for Hotwire Turbo Integration.

### Authentication and posts

required: only signed in users can see the author of each post. Do not add
edit/delete functionality

1. Create a Post model and a Posts controller and a corresponding resource in your Routes file which allows the [:new, :create, :index] methods.
1. Atop your Posts Controller, use a #before_action to restrict access to the #new and #create methods to only users who are signed in.
1. For your Posts Controller, prepare your #new action.
1. Write a form in the app/views/posts/new.html.erb view which will create a new Post.
1. Make your corresponding #create action build a post where the foreign key for the author (e.g. user_id) is automatically populated based on whichever user is signed in. Redirect to the Index view if successful.
1. Fill out the #index action of the PostsController and create the corresponding view. The view should show a list of every post.
1. Now add logic in your Index view to display the author’s name, but only if a user is signed in.
1. Sign in and create a few secret posts.
1. Test it out – sign out and go to the index page. You should see a list of the posts but no author names. Sign in and the author names should appear. Your secrets are safe!

## Todo

* consider creating a `Member::` namespace for signed-in users, then route according to [notes](../rails/notes.md#controller-namespaces)
