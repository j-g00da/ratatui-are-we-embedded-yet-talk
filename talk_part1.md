---
theme:
    name: terminal-dark
    override:
        default:
            colors:
                background: "110000"
                foreground: "ffaa55"
---

<!-- column_layout: [1, 1, 1] -->
<!-- column: 1 -->

`   `

`>>>` _**Ratatui** gave us beautiful TUIs._  
`   ` _**Ratzilla** expanded it to the web._  
`   ` _But why shall we stop there?_  
`   ` _**Why shall we stop anywhere?**_  

<!-- column_layout: [1] -->
<!-- column: 0 -->

Are We Embedded Yet?
===

```
Art by valkyrie
.__________________________________________________.
||////////////////////////////////////////////////||
||////////////////////////////////////////////////||
||////////////////////////////////////////////////||
||////////////////////////////////////////////////||    ___.
||////////////////////////////////////////////////||   /    \
!__________________________________________________!  |      |
|   __ __ __ __ __ __ __ __ __ __  /|\ ATARI 2080ST|  |      |
|__/_//_//_//_//_//_//_//_//_//_/____________--____|  |  .---|---.
| ______________________________________________   |  |  |   |   |
| [][][][][][][][][][][][][][][__] [_][_] [][][][] |  |  |---'---|
| [_][][][][][][][][][][][][]| |[] [][][] [][][][] |  |  |       |
| [__][][][][][][][][][][][][__|[] [][][] [][][][] |  |  |       |
| [_][][][][][][][][][][][][_]            [][][]|| |  |  |  /|\  |
|    [_][________________][_]             [__][]LI |  |   \_____/
|__________________________________________________|  ;
                                                 \___/
```

---

<!-- column_layout: [1, 3, 1] -->
<!-- column: 0 -->
Jagoda Ślązak  
jslazak.com  
github.com/j-g00da  

<!-- column: 2 -->
Rust Gdańsk #9 meetup  
1 July 2025  

<!-- 
speaker_note: |
  Who uses terminal?

  Who likes cheese?

  Then I have something for you.

  I’m Jagoda and I will talk about Ratatui and porting it beyond the terminal.
-->

<!-- end_slide -->


What is Ratatui?
===
> Ratatui is a Rust crate for cooking up terminal user interfaces (TUIs). 
> It provides a simple and flexible way to create text-based user interfaces in the terminal, 
> which can be used for command-line applications, dashboards, and other interactive console programs.

~ Ratatui docs

<!-- 
speaker_note: |
  But what is Ratatui?
  Well if you have seen the movie, you would know it’s all about cooking.
  Sadly the movie doesn’t mention, that what we are cooking are terminal user interfaces.

  *run demo2*

  Ratatui is a rust framework for TUIs, here’s a demo of it’s capabilities.
  As you can see we can define different widgets that make graphical user interfaces obsolete.

  *run btm*

  You probably used top or htop before. Well, now we have a rust equivalent called, well, bottom.

  *run codex*
  *ask it "what is ratatui?"*

  OpenAI is rewriting codex cli in rust, and they use ratatui.

  *run rsfrac*

  Do you need fractals in your terminal? Well, now we have fractals in terminal.
-->

<!-- end_slide -->


Pushing TUI to the limits
===
- `cxreiff/`*bevy_ratatui_camera* - `render bevy application frames to the terminal`
- `junkdog/`*tachyonfx*           - `shader-like effects in the terminal`

```
          ___
        ,"---".
        :     ;
         `-.-'
          | |
          | |
          | |
       _.-\_/-._
    _ / |     | \ _
   / /   `---'   \ \
  /  `-----------'  \
 /,-""-.       ,-""-.\
( i-..-i       i-..-i )
|`|    |-------|    |'|
\ `-..-'  ,=.  `-..-'/
 `--------|=|-------'
          | |
          \ \
           ) ) hjw
          / /
         ( (
```

<!-- 
speaker_note: |
  Now you know what Ratatui is, but that's just the beginning.

  Ratatui is it's community, and the community is pushing TUI to the limits.

  Today we are in a building called ECS, which obviously stands for Entity Component System.
  Talking about ECS, you probably heard about bevy, a game engine written in rust.

  *runs bevy*

  Well, now you can render bevy application frames to the terminal using bevy_ratatui_camera crate.
  And you can even use ratatui widgets in 3d space.
  Since all we ever wanted were terminal games, I think this is absolutely amazing.

  *runs ttysvr*
  
  You can have a DVD logo bouncing around your terminal, how cool is that?

  *tachyonfx*

  And you can even have effects like these in the terminal.
-->

<!-- end_slide -->


Beyond the terminal...
===
Built-in backends:
- *ratatui-crossterm*                -> `Terminal`
- *ratatui-termion*                  -> `Terminal`
- *ratatui-termwiz*                  -> `You guessed it, Terminal`

Custom backends:
- `gold-silver-copper/`*egui-ratatui*  -> `EGUI widget`
- `j-g00da/`*mousefood*                -> `embedded-graphics draw target`
- `reubeno/`*ratatui-uefi*             -> `UEFI`
- `Jesterhearts/`*ratatui-wgpu*        -> `GPU accelerated rendering to arbitrary buffer`
- `orhun/`*ratzilla*                   -> `Web`
- `gold-silver-copper/`*soft_ratatui*  -> `Pure software rendering to arbitrary buffer`

<!-- 
speaker_note: |
  Ok, but what if I told you that we can bring terminal UI beyond the terminal?

  Ratatui has built-in backends for crossterm, termion and termwiz, which are terminal manipilation libraries.
  
  But since it exposes a Backend trait, you can implement your own backend that draws to anything.

  There are many custom backends available, and I will showcase a few of them.
-->

<!-- end_slide -->


soft_ratatui
===
> Software rendering backend for ratatui. No GPU required. TUI everywhere.
> 
> Fast, portable, no-bloat.
> 
> Optimized for speed, generally faster than running ratatui inside a terminal. 120+ fps on normal workloads.
> Only one dependency, Unicode Font rendering powered by cosmic-text.
> Custom portable pixel rasterizer.

~ soft_ratatui docs

<!-- 
speaker_note: |
  Soft_ratatui skips the terminal emulator and draws to any display buffer.
  This way we can for example draw to a texture and do the opposite of what bevy_ratatui_camera does.

  *runs soft*

  Someone on social media said that well that's just a cube, but think about what it enables.
  Imagine we have a game, and there's a computer with a terminal in it. 
  We can create a ratatui application that runs on this computer, amazing.
-->

<!-- end_slide -->


ratatui-wgpu
===
> A wgpu based rendering backend for ratatui.
> 
> This started out as a custom rendering backend for a game I'm developing, and I thought I'd make it available to the broader community as an alternative rendering target for TUI applications. One of its primary goals is to support serving TUI applications on the web & desktop.

~ ratatui-wgpu docs

<!-- 
speaker_note: |
  ratatui-wgpu is a similar idea but it uses GPU acceleration.
  
  *runs wgpu*

  Same as before, it can draw to any pixel buffer, so we can for example draw use it in a web application.
-->

<!-- end_slide -->


ratatui-uefi
===
> Implements a ratatui backend for use in UEFI environments.

~ ratatui-uefi docs

<!-- 
speaker_note: |
  We can also use ratatui in UEFI.
-->

<!-- end_slide -->


FOSDEM 2025
===
```
              ▓▓    ░░                                                                                        
        ▓▓   ▒▓▓▒  ▓▓▓                                                                                        
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ░                                                                                   
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                                                                                   
   ▓▓▓▓▓▓▓▓▓        ░▓▓▓▓▓         ▓▓▓▓▓▓▓▓▓  ░▓▓▓▓▓▓▓░    ▓▓▓▓▓▓▓▓░ ░▓▓▓▓▓▓▓▓    ░▓▓▓▓▓▓▓▓▓  ░▓▓▓▓   ▒▓▓▓▓   
     ▒▓▓▓▓            ▓▓▓▓▓▓▓▓     ▓▓▓░      ▒▓▓▓   ▓▓▓▓  ▓▓▓   ░▓▓  ░▓▓▓  ░▓▓▓▓  ░▓▓▓        ░▓▓▓▓░  ▓▓▓▓▓   
     ▓▓▓▓    ▓▒   ▓▒   ▓▓▓▓▓▓      ▓▓▓░      ▓▓▓     ▓▓▓  ▓▓▓▓░      ░▓▓▓    ▓▓▓  ░▓▓▓        ▓▓▓░▓▓ ░▓▓▒▓▓░  
  ▓▓▓▓▓▓▓  ▒▓▓▓▓▒▓▓▓▓  ▒▓▓▓▓       ▓▓▓▓▓▓▓▓ ░▓▓▓     ▓▓▓▒ ░▓▓▓▓▓▓▓░  ░▓▓▓    ▓▓▓▓ ░▓▓▓▓▓▓▓    ▓▓▓ ▓▓░▓▓▓░▓▓   
     ▓▓▓▓   ▓▓▓░ ▓▓▓░  ▓▓▓▓▓▒      ▓▓▓░      ▓▓▓     ▓▓▓░     ░▓▓▓▓  ░▓▓▓    ▓▓▓▒ ░▓▓▓        ▓▓▓ ▓▓▓▓▓░░▓▓▒  
     ░▓▓▓▓            ░▓▓▓▓▓▓▓     ▓▓▓░      ▓▓▓▓   ▓▓▓▓  ▓░    ▓▓▓░ ░▓▓▓   ▓▓▓▓  ░▓▓▓       ░▓▓▓  ▓▓▓▓ ░▓▓▓  
   ▒▓▓▓▓▓▓▓          ▓▓▓▓▓         ▓▓▓░       ▒▓▓▓▓▓▓▓▓  ▒▓▓▓▓▓▓▓▓▓  ░▓▓▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓▓▓  ▓▓▓       ░▓▓▓  
       ░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒                                                                                   
        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒  ▓▓                                                                                   
        ▓▓   ▓▓▓▓▓ ▓▓▓                                                                                        
             ░▓▓    ▓░                                                                                                                                                                                                                        
```

<!-- 
speaker_note: |
  I was at FOSDEM in Brussels this year, and that's how I learned about Ratatui.
-->

<!-- end_slide -->



Ratzilla
===
> Build terminal-themed web applications with Rust and WebAssembly. Powered by Ratatui.

~ Ratzilla docs

<!-- 
speaker_note: |
  Orhun Parmaksız gave a talk about Ratzilla, his own Ratatui backend for the web.
  It made me start to wonder, wow, where else would it be possible to run Ratatui applications?
-->

<!-- end_slide -->
