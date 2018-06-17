package io.intercom.a.a.a.g.b;

import android.graphics.drawable.Drawable;

public final class a
  implements e<Drawable>
{
  private final boolean cQI;
  private b cQJ;
  private final int duration;
  
  protected a(int paramInt, boolean paramBoolean)
  {
    this.duration = paramInt;
    this.cQI = paramBoolean;
  }
  
  public final d<Drawable> c(io.intercom.a.a.a.c.a parama)
  {
    if (parama == io.intercom.a.a.a.c.a.cHG) {
      return c.JO();
    }
    if (this.cQJ == null) {
      this.cQJ = new b(this.duration, this.cQI);
    }
    return this.cQJ;
  }
  
  public static final class a
  {
    private boolean cQI;
    private final int cQK = 300;
    
    public a()
    {
      this((byte)0);
    }
    
    private a(byte paramByte) {}
    
    public final a JM()
    {
      return new a(this.cQK, this.cQI);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */