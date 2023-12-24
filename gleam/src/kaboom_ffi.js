import kaboom from "kaboom";
import * as helloKaboom from "./kaboom.mjs";

let gInstance;

export function init(opts) {
  gInstance = kaboom(opts);
}

export function loadSprite(name, src) {
  return gInstance.loadSprite(name, src);
}

export function sprite(name) {
  return gInstance.sprite(name);
}

export function center() {
  return gInstance.center();
}

function vec2ToJs(vec2) {
  return gInstance.vec2(vec2.x, vec2.y);
}

export function pos(vec2) {
  return gInstance.pos(vec2ToJs(vec2));
}

export function add(comps) {
  return gInstance.add(comps.toArray().map((c) => c[0]));
}

export function mousePos() {
  const pos = gInstance.mousePos();
  return new helloKaboom.Vec2(pos.x, pos.y);
}

export function addKaboom(pos) {
  return gInstance.addKaboom(vec2ToJs(pos));
}

export function onClick(func) {
  return gInstance.onClick(func);
}

export function setPos(gameObj, pos) {
  gameObj.pos = vec2ToJs(pos);
}

export function randi(from, to) {
  return gInstance.randi(from, to);
}
