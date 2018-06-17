package okhttp3.internal.e;

import d.f;

public final class c
{
  public static final f daA = f.fG(":");
  public static final f daB = f.fG(":status");
  public static final f daC = f.fG(":method");
  public static final f daD = f.fG(":path");
  public static final f daE = f.fG(":scheme");
  public static final f daF = f.fG(":authority");
  public final f daG;
  public final f daH;
  final int hpackSize;
  
  public c(f paramf1, f paramf2)
  {
    this.daG = paramf1;
    this.daH = paramf2;
    this.hpackSize = (paramf1.size() + 32 + paramf2.size());
  }
  
  public c(f paramf, String paramString)
  {
    this(paramf, f.fG(paramString));
  }
  
  public c(String paramString1, String paramString2)
  {
    this(f.fG(paramString1), f.fG(paramString2));
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof c))
    {
      paramObject = (c)paramObject;
      bool1 = bool2;
      if (this.daG.equals(((c)paramObject).daG))
      {
        bool1 = bool2;
        if (this.daH.equals(((c)paramObject).daH)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return (this.daG.hashCode() + 527) * 31 + this.daH.hashCode();
  }
  
  public final String toString()
  {
    return okhttp3.internal.c.format("%s: %s", new Object[] { this.daG.KE(), this.daH.KE() });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */