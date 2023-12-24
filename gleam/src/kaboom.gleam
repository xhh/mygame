pub type JsPosComp

pub type JsSpriteComp

pub type Comp {
  PosComp(JsPosComp)
  SpriteComp(JsSpriteComp)
}

pub type Vec2 {
  Vec2(x: Int, y: Int)
}

pub type GameObj

pub type KaboomOpts {
  KaboomOpts(global: Bool, scale: Float, width: Int, height: Int)
}

@external(javascript, "./kaboom_ffi.js", "init")
pub fn init(opts: KaboomOpts) -> Nil

@external(javascript, "./kaboom_ffi.js", "loadSprite")
pub fn load_sprite(name: String, src: String) -> Nil

@external(javascript, "./kaboom_ffi.js", "sprite")
fn js_sprite(name: String) -> JsSpriteComp

pub fn sprite(name: String) -> Comp {
  SpriteComp(js_sprite(name))
}

@external(javascript, "./kaboom_ffi.js", "add")
pub fn add(comps: List(Comp)) -> GameObj

@external(javascript, "./kaboom_ffi.js", "center")
pub fn center() -> Vec2

@external(javascript, "./kaboom_ffi.js", "pos")
fn js_pos(vec2: Vec2) -> JsPosComp

@external(javascript, "./kaboom_ffi.js", "pos")
fn js_pos2(x: Int, y: Int) -> JsPosComp

pub fn pos(vec2: Vec2) -> Comp {
  PosComp(js_pos(vec2))
}

pub fn pos2(x: Int, y: Int) -> Comp {
  PosComp(js_pos2(x, y))
}

@external(javascript, "./kaboom_ffi.js", "mousePos")
pub fn mouse_pos() -> Vec2

@external(javascript, "./kaboom_ffi.js", "addKaboom")
pub fn add_kaboom(pos: Vec2) -> Nil

@external(javascript, "./kaboom_ffi.js", "onClick")
pub fn on_click(func: fn() -> Nil) -> Nil

@external(javascript, "./kaboom_ffi.js", "setPos")
pub fn set_pos(o: GameObj, pos: Vec2) -> Nil

@external(javascript, "./kaboom_ffi.js", "randi")
pub fn randi(from: Int, to: Int) -> Int
