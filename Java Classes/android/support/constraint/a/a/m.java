package android.support.constraint.a.a;

import java.util.ArrayList;

public final class m
{
  int db;
  int dc;
  int gC;
  int gD;
  ArrayList<a> hY = new ArrayList();
  
  public m(d paramd)
  {
    this.gC = paramd.getX();
    this.gD = paramd.getY();
    this.db = paramd.getWidth();
    this.dc = paramd.getHeight();
    paramd = paramd.aJ();
    int j = paramd.size();
    int i = 0;
    while (i < j)
    {
      c localc = (c)paramd.get(i);
      this.hY.add(new a(localc));
      i += 1;
    }
  }
  
  public final void b(d paramd)
  {
    paramd.setX(this.gC);
    paramd.setY(this.gD);
    paramd.setWidth(this.db);
    paramd.setHeight(this.dc);
    int j = this.hY.size();
    int i = 0;
    while (i < j)
    {
      a locala = (a)this.hY.get(i);
      paramd.a(locala.hD.fw).a(locala.fx, locala.fy, -1, locala.hZ, locala.ia, false);
      i += 1;
    }
  }
  
  static final class a
  {
    c fx;
    int fy;
    c hD;
    int hZ;
    int ia;
    
    public a(c paramc)
    {
      this.hD = paramc;
      this.fx = paramc.fx;
      this.fy = paramc.ay();
      this.hZ = paramc.fA;
      this.ia = paramc.fC;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */