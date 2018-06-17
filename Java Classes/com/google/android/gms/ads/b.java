package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.b.d;
import com.google.android.gms.ads.b.g.a;
import com.google.android.gms.ads.b.h.a;
import com.google.android.gms.ads.b.i.a;
import com.google.android.gms.ads.b.i.b;
import com.google.android.gms.ads.b.k.a;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.no;
import com.google.android.gms.internal.nt;
import com.google.android.gms.internal.nx;
import com.google.android.gms.internal.ob;
import com.google.android.gms.internal.of;
import com.google.android.gms.internal.oo;
import com.google.android.gms.internal.or;
import com.google.android.gms.internal.rd;
import com.google.android.gms.internal.td;
import com.google.android.gms.internal.te;
import com.google.android.gms.internal.tf;
import com.google.android.gms.internal.tg;
import com.google.android.gms.internal.th;
import com.google.android.gms.internal.ti;

public class b
{
  private final nt ayW;
  public final oo ayX;
  public final Context mContext;
  
  b(Context paramContext, oo paramoo)
  {
    this(paramContext, paramoo, nt.baR);
  }
  
  private b(Context paramContext, oo paramoo, nt paramnt)
  {
    this.mContext = paramContext;
    this.ayX = paramoo;
    this.ayW = paramnt;
  }
  
  public static final class a
  {
    private final or ayY;
    private final Context mContext;
    
    private a(Context paramContext, or paramor)
    {
      this.mContext = paramContext;
      this.ayY = paramor;
    }
    
    public a(Context paramContext, String paramString)
    {
      this((Context)ae.g(paramContext, "context cannot be null"), (or)nx.a(paramContext, false, new ob(of.tk(), paramContext, paramString, new ti())));
    }
    
    public final a a(a parama)
    {
      try
      {
        this.ayY.a(new no(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        af.d("Failed to set AdListener.", parama);
      }
      return this;
    }
    
    public final a a(d paramd)
    {
      try
      {
        this.ayY.a(new rd(paramd));
        return this;
      }
      catch (RemoteException paramd)
      {
        af.d("Failed to specify native ad options", paramd);
      }
      return this;
    }
    
    public final a a(g.a parama)
    {
      try
      {
        this.ayY.a(new td(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        af.d("Failed to add app install ad listener", parama);
      }
      return this;
    }
    
    public final a a(h.a parama)
    {
      try
      {
        this.ayY.a(new te(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        af.d("Failed to add content ad listener", parama);
      }
      return this;
    }
    
    public final a a(k.a parama)
    {
      try
      {
        this.ayY.a(new th(parama));
        return this;
      }
      catch (RemoteException parama)
      {
        af.d("Failed to add google native ad listener", parama);
      }
      return this;
    }
    
    public final a a(String paramString, i.b paramb, i.a parama)
    {
      try
      {
        or localor = this.ayY;
        tg localtg = new tg(paramb);
        if (parama == null) {}
        for (paramb = null;; paramb = new tf(parama))
        {
          localor.a(paramString, localtg, paramb);
          return this;
        }
        return this;
      }
      catch (RemoteException paramString)
      {
        af.d("Failed to add custom template ad listener", paramString);
      }
    }
    
    public final b lx()
    {
      try
      {
        b localb = new b(this.mContext, this.ayY.tm());
        return localb;
      }
      catch (RemoteException localRemoteException)
      {
        af.c("Failed to build AdLoader.", localRemoteException);
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */