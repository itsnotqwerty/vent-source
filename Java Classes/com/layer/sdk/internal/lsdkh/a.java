package com.layer.sdk.internal.lsdkh;

import android.net.Uri;
import android.os.Process;
import android.util.LruCache;
import com.layer.sdk.query.Queryable;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class a
{
  final com.layer.sdk.internal.a a;
  final AtomicReference<List<Uri>> b;
  private int bpD = -1;
  final a bsh;
  final LruCache<Uri, Queryable> bsi = new LruCache(49);
  private int d = -1;
  private int f = -1;
  private int g = -1;
  
  public a(com.layer.sdk.internal.a parama, AtomicReference<List<Uri>> paramAtomicReference, a parama1)
  {
    this.a = parama;
    this.b = paramAtomicReference;
    this.bsh = parama1;
  }
  
  public final void a(final int paramInt)
  {
    if ((paramInt > this.f) && (paramInt < this.g)) {
      return;
    }
    final int i = this.d;
    final int j = this.bpD;
    this.d = (paramInt - 24);
    this.bpD = (paramInt + 24);
    this.f = (paramInt - 12);
    this.g = (paramInt + 12);
    this.a.d(new Runnable()
    {
      public final void run()
      {
        Process.setThreadPriority(10);
        List localList = (List)a.this.b.get();
        int i = paramInt - 24;
        while (i <= paramInt + 24)
        {
          if (((i < i) || (i > j)) && (i >= 0) && (i < localList.size()))
          {
            Uri localUri = (Uri)localList.get(i);
            if (localUri != null)
            {
              Queryable localQueryable = a.this.a.get(localUri);
              if (localQueryable != null)
              {
                a.this.bsi.put(localUri, localQueryable);
                a.this.bsh.a(localQueryable);
              }
            }
          }
          i += 1;
        }
      }
    });
  }
  
  public static abstract interface a
  {
    public abstract void a(Queryable paramQueryable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */