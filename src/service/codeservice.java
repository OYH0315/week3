package service;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class codeservice {
    private static final int WIDTH=100;
    private static final int HEIGHT=30;
    private static final int LENGTH=4;
    private static final int LINECOUNT=20;
    private static  final String str="23456789"+"qwertyuiopasdfghjklzxcvbnm"+"QWERTYUIOPASDFGHJKLZXCVBNM";
    private static Random random=new Random();
public String createCode()
{
    String code="";
    for(int i=0;i<LENGTH;i++)
    {
        char c=str.charAt(random.nextInt(str.length()));
        code=code+c;
    }
    return  code;
}
public Color getcolor()
{
    return  new Color(random.nextInt(255),random.nextInt(255),random.nextInt(255));

}
public Font getfont()
{
    return  new Font("Fixedsys",Font.CENTER_BASELINE,22);

}
public void drawchar(Graphics g,String code)
{
    g.setFont(getfont());
    for(int i=0;i<LENGTH;i++)
    {
        char c=code.charAt(i);
        g.setColor(getcolor());
        g.drawString(c+"",20*i+10,20);
    }
}
public void drawline(Graphics g)
{
    int x=random.nextInt(WIDTH);
    int y=random.nextInt(HEIGHT);
    int x1=random.nextInt(13);
    int y1=random.nextInt(15);
    g.setColor(getcolor());
    g.drawLine(x,y,x+x1,y+y1);
}
public BufferedImage createimg(String code)
{
    BufferedImage image=new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_3BYTE_BGR);
    Graphics g=image.getGraphics();
    g.setColor(Color.white);
    g.fillRect(0,0,WIDTH,HEIGHT);
    drawchar(g,code);
    for(int i=0;i<LINECOUNT;i++)
    {
        drawline(g);
    }
    g.dispose();
    return image;
}
}
