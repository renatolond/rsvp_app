# README

RSVP app is an easy-to-deploy rails app meant as a solution for simple RSVPs. With a minimal set of functionalities, the idea is to allow guests to respond to an event and see information about it.

It is not meant as a complex solution, it avoids all complexity of sending emails and more advanced functionality instead focusing on a solution that depends on nothing and can be easily deployed on a VPS.

It uses Bulma as the CSS framework and vanilla js for minimal javascript functionality. It should work well on mobile devices as well as desktop. It is partly based off https://bulmatemplates.github.io/bulma-templates/templates/showcase.html

You need to edit the views in app/views/invite to do any changes you wish.

The users login with a code which both identify them uniquelly and allow them to login. You should generate hard-to-guess codes for security, think of using a passphrase generator with a large-enough entropy.

# Development

You need to install ruby (the version in `.ruby-version`) and then you can install dependencies and run the project with `./bin/setup`.

It uses a sqlite database and nothig else, so you don't need to have any other dependencies to run it.

# Deployment

You can deploy this as you would any other rails app.

If you are comfortable with docker, there's a Dockerfile available which will build a container ready to be executed. It needs to be served over HTTPS.
