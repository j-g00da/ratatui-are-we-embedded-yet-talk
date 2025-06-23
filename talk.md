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
- `cxreiff/`*bevy_ratatui_camera* - `render bevy application frames to the terminal`
- `junkdog/`*tachyonfx*           - `shader-like effects in the terminal`
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
<!-- end_slide -->


soft_ratatui
===
> Software rendering backend for ratatui. No GPU required. TUI everywhere.
> 
> Fast, portable, no-bloat.
> 
> Optimized for speed, generally faster than running ratatui inside a terminal. 120+ fps on normal workloads.
> Only one dependency, Unicode Font rendering powered by cosmic-text
> Custom portable pixel rasterizer.

~ soft_ratatui docs

<!-- end_slide -->


ratatui-uefi
===
> Implements a ratatui backend for use in UEFI environments.

~ ratatui-uefi docs

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
<!-- end_slide -->



Ratzilla
===
> Build terminal-themed web applications with Rust and WebAssembly. Powered by Ratatui.

~ Ratzilla docs
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


Build your own backend (quickstart)
===
```rust
pub trait Backend {
    /// Error type associated with this Backend.
    type Error: core::error::Error;

    /// Draw the given content to the terminal screen.
    fn draw<'a, I>(&mut self, content: I) -> Result<(), Self::Error>
    where
        I: Iterator<Item=(u16, u16, &'a Cell)>;

    /// Hide the cursor on the terminal screen.
    fn hide_cursor(&mut self) -> Result<(), Self::Error>;

    /// Show the cursor on the terminal screen.
    fn show_cursor(&mut self) -> Result<(), Self::Error>;

    /// Get the current cursor position on the terminal screen.
    fn get_cursor_position(&mut self) -> Result<Position, Self::Error>;

    /// Set the cursor position on the terminal screen to the given x and y coordinates.
    fn set_cursor_position<P: Into<Position>>(&mut self, position: P) -> Result<(), Self::Error>;

    /// Clears the whole terminal screen
    fn clear(&mut self) -> Result<(), Self::Error>;

    /// Clears a specific region of the terminal specified by the [`ClearType`] parameter
    fn clear_region(&mut self, clear_type: ClearType) -> Result<(), Self::Error>;

    /// Get the size of the terminal screen in columns/rows as a [`Size`].
    fn size(&self) -> Result<Size, Self::Error>;

    /// Get the size of the terminal screen in columns/rows and pixels as a [`WindowSize`].
    fn window_size(&mut self) -> Result<WindowSize, Self::Error>;

    /// Flush any buffered content to the terminal screen.
    fn flush(&mut self) -> Result<(), Self::Error>;
}
```
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
`the-moonwitch/`*Cozette* (Literally this font) 
<!-- end_slide -->


Buffer flushing inconsistencies
===
TODO
<!-- end_slide -->


Optimizations
===
TODO
<!-- end_slide -->


Demo
===
TODO: demo
<!-- end_slide -->


Ok, let's get back to `#[no_std]` thing...
===
TODO: the tracking issue, list things that that required changes
<!-- end_slide -->


Trivial changes
===

- explicitly use `core` or `alloc` instead of `std` if possible
- add linter rules that check for unnecessary `std` usages
- disable `std` features in upstream crates
- use `kasuari` instead of unmaintained `cassowary` crate
- add necessary feature flags
TODO: code snippets
<!-- end_slide -->


Upstream crates
===
- make `kasuari` and `line-clipping` not require `std`

TODO: code snippets
<!-- end_slide -->


Layout cache
===
TODO
<!-- end_slide -->


f64 polyfills
===
<!-- column_layout: [1, 1] -->
<!-- column: 0 -->

Initial idea - create a new crate that wraps `libm`:  

```rust
// j-g00da/float-polyfills/src/float_64.rs
impl F64Polyfill for f64 {
    // (...)
    #[inline]
    fn cos(self) -> f64 {
        libm::cos(self)
    }
    // (...)
}
```
Cons:
- Adds maintenance overhead for an extra crate
- Produces a `libm` dependency, which ~99% of use cases don’t need
  (there’s no idiomatic way to make it optional in `std`; this is why it was removed from `core`)
- `libm` is accurate but slow - we care more about speed than precision here
- We only need a few methods in a few places - feels like overkill

<!-- column: 1 -->

Final implementation - polyfills included directly in `ratatui-widgets`, 
fast approximation of trigonometric functions based on `micromath` crate:  

```rust
// ratatui/ratatui/ratatui-widgets/src/polyfills.rs
// (...)
#[inline]
fn cos(val: f64) -> f64 {
    let mut x = val;
    x *= FRAC_1_PI / 2.0;
    x -= 0.25 + floor(x + 0.25);
    x *= 16.0 * (x.abs() - 0.5);
    x += 0.225 * x * (x.abs() - 1.0);
    x
}
// (...)
impl F64Polyfills for f64 {
    // (...)
    #[inline]
    fn cos(self) -> f64 {
        cos(self)
    }
}
// (...)

// Usage:
#[cfg(not(feature = "std"))]
use crate::polyfills::F64Polyfills;
```

<!-- end_slide -->


No-std Ratatui
===
TODO: what is currently available in no_std
<!-- end_slide -->


What's next?
===
TODO: upcoming mousefood release
<!-- end_slide -->


Rat in The Wild Challenge
===
TODO
<!-- end_slide -->
