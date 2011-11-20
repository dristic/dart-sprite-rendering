#library('DartSpriteRendering');

#import('dart:dom');
#source('Engine.dart');
#source('IRenderable.dart');
#source('Sprite.dart');

void main() {
  Engine engine = new Engine(300, 300, '#000', 30);
  
  Sprite sprite = new Sprite(engine.canvas);
  engine.addObject(sprite);
  
  document.addEventListener('keydown', (event) {
    if(event.keyCode == 65) {
      sprite.left = true;
    } else if(event.keyCode == 68) {
      sprite.right = true;
    }
  });
  
  document.addEventListener('keyup', (event) {
    if(event.keyCode == 65) {
      sprite.left = false;
    } else if(event.keyCode == 68) {
      sprite.right = false;
    }
  });
}
