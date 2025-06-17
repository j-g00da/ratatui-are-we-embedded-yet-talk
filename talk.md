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

<!-- end_slide -->


What is Ratatui?
===
> Ratatui is a Rust crate for cooking up terminal user interfaces (TUIs). 
> It provides a simple and flexible way to create text-based user interfaces in the terminal, 
> which can be used for command-line applications, dashboards, and other interactive console programs.

~ Ratatui docs
<!-- end_slide -->


Pushing TUI to the limits
===
- `junkdog/`*tachyonfx*           - `shader-like effects in the terminal`
- `cxreiff/`*bevy_ratatui_camera* - `render bevy application frames to the terminal`
<!-- end_slide -->


Beyond the terminal...
===
Built-in backends:
- *ratatui-crossterm*                -> `Terminal`
- *ratatui-termion*                  -> `Terminal`
- *ratatui-termwiz*                  -> `You guessed it, Terminal`

Custom backends:
- `gold-silver-copper/`*soft_ratatui*  -> `Any pixel buffer`
- `reubeno/`*ratatui-uefi*             -> `UEFI`
- `orhun/`*ratzilla*                   -> `The browser`
- `j-g00da/`*mousefood*                -> `Embedded devices`
<!-- end_slide -->


soft_ratatui
===
TODO: demo
<!-- end_slide -->


ratatui-uefi
===
TODO: demo
<!-- end_slide -->


FOSDEM 2025
===
TODO: few words about FOSDEM, intro to Ratzilla
<!-- end_slide -->



Ratzilla
===
TODO: Ratzilla demo, first ideas for running Ratatui on MCU
<!-- end_slide -->



Rustmeet 2025
===
TODO: few words about esp32 quiz device
<!-- end_slide -->



Ratatui on Minitel
===
TODO: context why I talk about it here (plule also used esp32)
<!-- end_slide -->


Few words about the standard library and `#[no_std]`
===
TODO: why no_std is a thing, linking stuff, std, core, alloc, libc etc.
<!-- end_slide -->



Std on embedded?
===
TODO: esp-idf-svc, how it works with std
<!-- end_slide -->



Mousefood
===
TODO: first version of mousefood, coded in bed in the middle of the night
<!-- end_slide -->



Unicode
===
TODO: Unicode did not work
<!-- end_slide -->



IBM437
===
TODO: unicode cd.
<!-- end_slide -->



embedded-graphics/bdf
===
TODO: unicode cd.
<!-- end_slide -->



embedded-graphics-unicodefonts
===
TODO: unicode cd.
<!-- end_slide -->



Cozette
===
TODO: unicode cd.
<!-- end_slide -->



Demo
===
TODO: demo
<!-- end_slide -->



Ok, let's get back to `#[no_std]` thing...
===
TODO: the tracking issue, list things that that required changes
<!-- end_slide -->




