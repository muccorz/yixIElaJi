var nTiles = 14;//每排个数  
var nFrames = 128;  
 var phase = 0.0;  
var phaseInc = 1.0 / nFrames;  
  
// 画正弦波 
 function drawWave(w, freq, amp, phase) {  
     push();//和pop()一起用 相当于SL  
    beginShape();  
     for (var x = -w / 2.0; x < w / 2.0 + 1; x++) {  
         vertex(x, sin(x / w * TAU * freq + phase) * amp);//vertex是描点 用shape连接/创建图形 29-31行var了  
     }  
     endShape();//和beginshape连着用 中间夹着要画的东西 主要用来封口  
     pop();  
 }  
   
 function setup() {  
     createCanvas(800, 600);//正弦波的画板size 宽度影响间距  
    noFill();  
     seed = random(1000);  
 }  
  
 function draw() {  
    background(16,55,92);  
     resetMatrix();//将现有的矩阵替换成单位矩阵。  
    randomSeed(seed);  
     noiseSeed(seed);  
   
    var w = width / nTiles;  //nTiles = 10  
     var amp = w;  //w=↑  
     var nInc = 0.25;  
       
   // 创建边框  
     var thisWidth = 800;  
     var thisHeight = 600;//正弦波分布位置  
     var thisScale = thisWidth / width;  
     var t = (width - thisWidth) / 2.0;  
    var sw = w / 2.0 * thisScale;//根据画布尺寸均匀分布  
     translate(t + sw, t + sw);  
     for (var y = 0; y < nTiles; y++) {  
         var yPos = y / nTiles * thisHeight;  
        for (var x = 0; x < nTiles; x++) {  
            push();  
             var n = noise(x * nInc, (y + 1000) * nInc);  // 在偏移中添加noiset  
           var xPos = x / nTiles * thisWidth;  
             
           // 画正弦波的位置
            translate(xPos, yPos);  
  
            // 按照random（）的分配旋转xy轴 
            if (random() < 0.5) {  
                 rotate(HALF_PI);//xy轴方向 ＜0.5x轴  
            }  
  
            // 波动
            var thisPhase = phase;  
             if (random() < 0.5) {  
               thisPhase = 1 - thisPhase;  // line75call了
            }  
 
           // 颜色
             if (random() < 0.3) {  
                 stroke(76, 211, 194);//颜色比例  
             } else if (random() < 0.6){  
                 stroke(245, 66, 145);  
             }  
               else {  
                 stroke(10,151,176);  
             }  
              
             //一个循环周期
             var freq = pow(2, random(10));  
               
            // 正弦波本体
            drawWave(w * 0.5, freq, amp * n * thisScale * 0.5, n * TAU + thisPhase * TAU);  
  
             pop();  
         }  
     }  
   
     // 更新phasor  
    phase += phaseInc;  
 }  
