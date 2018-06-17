package com.layer.sdk.internal.lsdkd;

import android.net.Uri;

public class l
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(l.class);
  private final f b;
  private final d c;
  private final k.a d;
  
  public l(f paramf, Uri paramUri, k.a parama)
  {
    this.b = paramf;
    if (paramf == null) {}
    for (paramf = null;; paramf = paramf.a(paramUri, false))
    {
      this.c = paramf;
      this.d = parama;
      return;
    }
  }
  
  public static boolean a(f paramf, Uri paramUri, k.a parama, a parama1)
  {
    return new l(paramf, paramUri, parama).a(parama1);
  }
  
  private boolean a(a parama)
  {
    try
    {
      if (this.b == null) {
        throw new IllegalStateException("Failed to perform transactedUpdate due to no cache");
      }
    }
    catch (Exception localException)
    {
      parama.a(this.c, localException);
      return false;
    }
    if (this.c == null) {
      throw new IllegalStateException("Failed to perform transactedUpdate due to no changeable");
    }
    k localk = this.b.a(this.d);
    boolean bool = parama.a(this.c);
    this.b.b(localk, new d[] { this.c });
    this.b.a(localk, bool);
    return bool;
  }
  
  public static abstract interface a
  {
    public abstract void a(d paramd, Throwable paramThrowable);
    
    public abstract boolean a(d paramd);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */