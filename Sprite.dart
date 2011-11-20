class Sprite implements IRenderable {
  HTMLCanvasElement _canvas;
  HTMLCanvasElement get canvas() => _canvas;
  void set canvas(HTMLCanvasElement value) { _canvas = value; }
  
  CanvasRenderingContext2D _ctx;
  CanvasRenderingContext2D get ctx() => _ctx;
  void set ctx(CanvasRenderingContext2D value) { _ctx = value; }
  
  int x;
  int y;
  int width;
  int height;
  
  bool left = false;
  bool right = false;
  
  int frameRate = 60;
  
  Sprite(canvas) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    
    this.ctx.setFillColor('#FF0000');
    
    this.x = 10;
    this.y = 10;
    this.width = 30;
    this.height = 30;
  }
  
  void update() {
    if(this.left == true) {
      this.x = this.x - 3;
    }
    
    if(this.right == true) {
      this.x = this.x + 3;
    }
  }
  
  void render(CanvasRenderingContext2D context) {
    context.clearRect(0, 0, 300, 300);
    context.fillRect(this.x, this.y, this.width, this.height);
  }
}