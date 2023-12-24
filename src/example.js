import kaboom from "kaboom";

const k = kaboom({
  global: false,
  scale: 0.5,
});

k.loadSprite("bean", "sprites/bean.png");

const player = k.add([k.pos(k.center()), k.sprite("bean")]);

k.onClick(() => {
  const p = k.mousePos();
  k.addKaboom(p);

  player.pos = p;
  player.pos.x -= 20;
  player.pos.y -= 20;
});
