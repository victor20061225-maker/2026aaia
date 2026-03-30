// week06-2
// 修改自 week06-1  好玩的程式設計 兩層for(迴圈) 配合 if .. else if .. else
void setup() {
  size(800, 500); // 視窗大小 800 x 500
}
int [][]a = new int[10][16];
void mousePressed() {
  int i = mouseY/50, j = mouseX/50;
  a[i][j] = 1;
}
void draw() {
  for (int i=0; i<10; i++) { // 上週是 for y 現在改成 for i 左手i
    for (int j=0; j<16;  j++) { // 上週是 for x 現在改成 for j 右手j
      if ( a[i][j]==1 ) fill(#0D5FA0); // 若陣列有值, 設藍色
      else fill(255);// 沒有值, 設白色
      rect( j*50, i*50, 50, 50); // 畫四邊形
    }
  }
}

/*很多行的註解 用斜線星
for (int y=0; y<500; y+=50) {
   for (int x=0; x<800; x+=50) {
     if (x < mouseX && mouseX < x+50) fill(#0D5FA0);
     else if (y < mouseY && mouseY < y+50) fill(#0D5FA0);
     else fill(255);
     rect( j*50, i*50, 50, 50);
   }
  } 收尾的地方,是星斜線 
}*/
