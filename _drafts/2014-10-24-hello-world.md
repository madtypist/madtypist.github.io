---
layout: post
title: Hello World
author: me
modified:
categories: 
excerpt:
tags: []
image:
  feature:
date: 2014-10-24
---

The first thing you usually do when you start working with a new programming language is write a "Hello World" program. The point of this program is simple: demonstrate how to output a string to the console/screen. 

{% highlight ruby %}
p "What's your name?"
s = gets.strip
p "Hello #{s}!"
{% endhighlight %}