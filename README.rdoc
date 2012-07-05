# Noodall Carousel Component

A Carousel component for Noodall.

This component adds the ability to easily add a JavaScript carousel to your Nodes.

## Install

Add to your `Gemfile`

    gem 'noodall-components-carousel', :git => 'git@github.com:noodall/noodall-components-carousel.git'

Run `bundle install`

    bundle install

## Configuration

Noodall Carousel adds a `Carousel` component. Add it to your slots.

In `config/initializers/noodall.rb`

    Noodall::Node.slot :carousel, Carousel

You can now add `Carousel` components to your Nodes.

