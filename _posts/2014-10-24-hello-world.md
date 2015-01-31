---
layout: post
title: Hello World, Hello Blog
author: me
modified:
categories: 
excerpt: "Welcome to my blog. Welcome to coding."
tags: []
image:
  feature:
date: 2014-10-24
---

The first thing you usually do when you start working with a new programming language is write a "Hello World" program. The point of this program is simple: demonstrate how to output a string to the console/screen. 

### Java
First, let's take a look at a simple Hello World program written in Java.

{% highlight java %}
class HelloWorldApp {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
{% endhighlight %}

###Ruby
Here's another sample Hello World program. This one is a little more complicated than a normal Hello World program, because it features input *and* output. 

{% highlight ruby %}
puts "What's your name?"
name = gets.strip
puts "Hello, #{name}!"
{% endhighlight %}

Let's break this down line by line to see what's going on.