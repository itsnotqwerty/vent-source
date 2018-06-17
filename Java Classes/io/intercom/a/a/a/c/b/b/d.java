package io.intercom.a.a.a.c.b.b;

import java.io.File;

public class d
  implements a.a
{
  private final long cLL = 262144000L;
  private final a cLM;
  
  public d(a parama)
  {
    this.cLM = parama;
  }
  
  public final a IC()
  {
    File localFile = this.cLM.IE();
    if (localFile == null) {}
    while ((!localFile.mkdirs()) && ((!localFile.exists()) || (!localFile.isDirectory()))) {
      return null;
    }
    return e.b(localFile, this.cLL);
  }
  
  public static abstract interface a
  {
    public abstract File IE();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */