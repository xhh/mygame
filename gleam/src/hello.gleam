import kaboom.{KaboomOpts, Vec2, add, center, load_sprite, pos, randi, sprite} as k
import gleam/iterator

pub fn main() {
  k.init(KaboomOpts(global: False, scale: 0.5, width: 800, height: 800))

  load_sprite("bean", "sprites/bean.png")

  let p = Vec2(randi(100, 500), randi(100, 700))
  iterator.range(0, 2)
  |> iterator.each(fn(i) {
    add([sprite("bean"), pos(Vec2(..p, x: p.x + 70 * i))])
  })

  let player = add([sprite("bean"), pos(center())])

  k.on_click(fn() {
    let p = k.mouse_pos()
    k.add_kaboom(p)

    let p = Vec2(p.x - 30, p.y - 30)
    k.set_pos(player, p)
    Nil
  })
}
