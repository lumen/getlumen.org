# Welcome to Lumen

Lumen is a project to make a compiler for **Erlang/Elixir** and other BEAM languages that can be compiled to different environments rather than run on a virtual machine. This should allow some interesting things:

- Compiling to WASM for running in the browser (and many other places).
- Compiling to static binaries.
- Potentially lower startup times and file sizes for deploying where the BEAM might fit poorly.

The Lumen project treats the current implementation of the BEAM as a kind of living standard to follow and aims to remain compatible where it makes sense. There are also some compromises made that allow for very strong optimizations. So the Lumen compiler does not attempt to retain the capacity for hot code updates which allows the compiler to eliminate unused parts of the standard libraries and make smaller binaries.

As announced on ElixirConf US 2020 we have the first public releases of the project that we are excited for the tinkering public to try!

## Download releases

Fair warning: Lumen is still an early stages project.

The current [Lumen releases are available here](https://github.com/lumen/lumen/releases/latest). Download the right version for your environment and get cooking. Windows releases are coming but might not be there at this stage.

## News

<div class="news">
  {% for post in site.posts %}
    <div class="news-item">
        <a href="{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%-d %B %Y" }}
        <div class="news-body">
        {{ post.excerpt }}
        </div>
        <a class="read-more" href="{{ post.url }}">Read more</a>
    </div>
    <hr />
  {% endfor %}
</div>
