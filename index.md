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

## Resources & documentation

For now we provide the following resources where you can learn more about the project and what we are planning.

- [Video: Announcement keynote at ElixirConf 2019](https://www.youtube.com/watch?v=uMgTIlgYB-U)
- [Repo: Lumen on GitHub](https://github.com/lumen/lumen)
- [Video: Paul Schoenfelder, aka. bitwalker giving a talk on Lumen, BEAM and Web Assembly at Code Mesh London 2019](https://youtu.be/PBY8MQ09D9w)
- [Video: Luke Imhoff, giving a talk on Lumen at Lonestar Elixir 2020](https://youtu.be/I_2H16ZM824)
- [Podcast: Paul Schoenfelder and Hans Elias Josephsen on Elixir Wizards](https://smartlogic.io/podcast/elixir-wizards/s3e11-lumen/)
- [Podcast: Elixir Talk with the Lumen Team](https://soundcloud.com/elixirtalk/episode-155-feat-brian-cardarella-luke-imhoff-paul-schoenfelder-and-hans-elias-josephsen-lumen)
- [Docs: Lumen Examples](https://github.com/lumen/examples)

## Follow along or get involved

The Lumen Core Team has weekly standups that are open to the public. If you want to join you can get the current information at the Elixir Slack which you can [join here](https://elixir-slackin.herokuapp.com) and you will find us in the #lumen channel.

We also provide the standups as video recordings on our YouTube channel. They will be in [this playlist](https://www.youtube.com/playlist?list=PLsCj6KFW04Dq8kKtI8WL4X3hJReQ2Uh4r).

<div class="video-container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLsCj6KFW04Dq8kKtI8WL4X3hJReQ2Uh4r" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
