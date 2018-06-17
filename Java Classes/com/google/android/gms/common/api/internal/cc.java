package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.support.v4.app.j;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.ae;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicReference;

public class cc
  extends ci
{
  private final SparseArray<a> aGv = new SparseArray();
  
  private cc(az paramaz)
  {
    super(paramaz);
    this.aDx.a("AutoManageHelper", this);
  }
  
  public static cc a(ay paramay)
  {
    if ((paramay.aFH instanceof j)) {}
    for (paramay = br.a((j)paramay.aFH);; paramay = ba.h((Activity)paramay.aFH))
    {
      cc localcc = (cc)paramay.c("AutoManageHelper", cc.class);
      if (localcc == null) {
        break label75;
      }
      return localcc;
      if (!(paramay.aFH instanceof Activity)) {
        break;
      }
    }
    throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    label75:
    return new cc(paramay);
  }
  
  private final a cL(int paramInt)
  {
    if (this.aGv.size() <= paramInt) {
      return null;
    }
    return (a)this.aGv.get(this.aGv.keyAt(paramInt));
  }
  
  public final void a(int paramInt, f paramf, f.c paramc)
  {
    ae.g(paramf, "GoogleApiClient instance cannot be null");
    if (this.aGv.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, 54 + "Already managing a GoogleApiClient with id " + paramInt);
      cj localcj = (cj)this.aGK.get();
      bool = this.uY;
      String str = String.valueOf(localcj);
      Log.d("AutoManageHelper", String.valueOf(str).length() + 49 + "starting AutoManage for client " + paramInt + " " + bool + " " + str);
      paramc = new a(paramInt, paramf, paramc);
      this.aGv.put(paramInt, paramc);
      if ((this.uY) && (localcj == null))
      {
        paramc = String.valueOf(paramf);
        Log.d("AutoManageHelper", String.valueOf(paramc).length() + 11 + "connecting " + paramc);
        paramf.connect();
      }
      return;
    }
  }
  
  protected final void a(a parama, int paramInt)
  {
    Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
    if (paramInt < 0) {
      Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
    }
    Object localObject;
    do
    {
      do
      {
        return;
        localObject = (a)this.aGv.get(paramInt);
      } while (localObject == null);
      a locala = (a)this.aGv.get(paramInt);
      this.aGv.remove(paramInt);
      if (locala != null)
      {
        locala.aGx.b(locala);
        locala.aGx.disconnect();
      }
      localObject = ((a)localObject).aGy;
    } while (localObject == null);
    ((f.c)localObject).a(parama);
  }
  
  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    while (i < this.aGv.size())
    {
      a locala = cL(i);
      if (locala != null)
      {
        paramPrintWriter.append(paramString).append("GoogleApiClient #").print(locala.aGw);
        paramPrintWriter.println(":");
        locala.aGx.dump(String.valueOf(paramString).concat("  "), paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
      i += 1;
    }
  }
  
  protected final void nl()
  {
    int i = 0;
    while (i < this.aGv.size())
    {
      a locala = cL(i);
      if (locala != null) {
        locala.aGx.connect();
      }
      i += 1;
    }
  }
  
  public final void onStart()
  {
    super.onStart();
    boolean bool = this.uY;
    Object localObject = String.valueOf(this.aGv);
    Log.d("AutoManageHelper", String.valueOf(localObject).length() + 14 + "onStart " + bool + " " + (String)localObject);
    if (this.aGK.get() == null)
    {
      int i = 0;
      while (i < this.aGv.size())
      {
        localObject = cL(i);
        if (localObject != null) {
          ((a)localObject).aGx.connect();
        }
        i += 1;
      }
    }
  }
  
  public final void onStop()
  {
    super.onStop();
    int i = 0;
    while (i < this.aGv.size())
    {
      a locala = cL(i);
      if (locala != null) {
        locala.aGx.disconnect();
      }
      i += 1;
    }
  }
  
  final class a
    implements f.c
  {
    public final int aGw;
    public final f aGx;
    public final f.c aGy;
    
    public a(int paramInt, f paramf, f.c paramc)
    {
      this.aGw = paramInt;
      this.aGx = paramf;
      this.aGy = paramc;
      paramf.a(this);
    }
    
    public final void a(a parama)
    {
      String str = String.valueOf(parama);
      Log.d("AutoManageHelper", String.valueOf(str).length() + 27 + "beginFailureResolution for " + str);
      cc.this.c(parama, this.aGw);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */