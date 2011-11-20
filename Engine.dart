class Engine {
  int frameRate;
  HTMLCanvasElement canvas;
  CanvasRenderingContext2D context;
  List<IRenderable> renderables;
  
  void Engine(int width, int height, String bgColor, int frameRate) {
    this.frameRate = frameRate;
    
    this.canvas = document.createElement('canvas');
    this.canvas.style.setProperty('width', width.toString() + 'px');
    this.canvas.style.setProperty('height', height.toString() + 'px');
    this.canvas.style.setProperty('background-color', bgColor);
    
    this.context = this.canvas.getContext('2d');
    
    document.getElementsByTagName('body')[0].appendChild(this.canvas);
    
    this.renderables = new List<IRenderable>();
    
    window.setInterval(f() => update(), ((1 / this.frameRate) * 1000).toInt());
  }
  
  void update() {
    Iterator<IRenderable> iterator = this.renderables.iterator();
    while(iterator.hasNext()) {
      iterator.next().render(this.context);
    }
  }
  
  void addObject(IRenderable renderable) {
    this.renderables.add(renderable);
  }
}
