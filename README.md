

Getting started:

1) Install the correct ruby version with your favorite version manager

2) `gem install bundler`

3) `bundle`

3) run `rake`
    -this will run all of the tests


To start the application:
`./bin/tribe_format_bundler.rb 10 IMG 15 FLAC 13 VID`


The over design approach I have taken is to apply Domain Driven Design.
Using models to represent the problem domain, and factories to add some layers.
I have also applied design patterns, such ah Factory, and Model view presenter.
I drove the design using BDD and TDD. Starting with feature specs, and moving down into unit tests.
I have applied the dependency inversion principle by using dependency injection.
