package com.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public final class t
{
  public static final Handler bNY = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      int m;
      a locala;
      Object localObject2;
      switch (paramAnonymousMessage.what)
      {
      default: 
        throw new AssertionError("Unknown handler message received: " + paramAnonymousMessage.what);
      case 8: 
        paramAnonymousMessage = (List)paramAnonymousMessage.obj;
        m = paramAnonymousMessage.size();
        i = 0;
      case 3: 
        while (i < m)
        {
          Object localObject3 = (c)paramAnonymousMessage.get(i);
          localObject1 = ((c)localObject3).bMF;
          locala = ((c)localObject3).bMP;
          localObject2 = ((c)localObject3).bNc;
          if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
          {
            j = 1;
            if ((locala == null) && (j == 0)) {
              break label258;
            }
          }
          label258:
          for (int k = 1;; k = 0)
          {
            if (k == 0) {
              break label264;
            }
            Object localObject4 = ((c)localObject3).bNa.uri;
            localObject4 = ((c)localObject3).awX;
            localObject4 = ((c)localObject3).bNd;
            localObject3 = ((c)localObject3).bNf;
            if (locala != null) {
              ((t)localObject1).a((Bitmap)localObject4, (t.d)localObject3, locala);
            }
            if (j == 0) {
              break label264;
            }
            k = ((List)localObject2).size();
            j = 0;
            while (j < k)
            {
              ((t)localObject1).a((Bitmap)localObject4, (t.d)localObject3, (a)((List)localObject2).get(j));
              j += 1;
            }
            j = 0;
            break;
          }
          label264:
          i += 1;
          continue;
          paramAnonymousMessage = (a)paramAnonymousMessage.obj;
          if (paramAnonymousMessage.bMF.bOj) {
            ag.b("Main", "canceled", paramAnonymousMessage.bMG.Au(), "target got garbage collected");
          }
          t.a(paramAnonymousMessage.bMF, paramAnonymousMessage.getTarget());
        }
        return;
      }
      Object localObject1 = (List)paramAnonymousMessage.obj;
      int j = ((List)localObject1).size();
      int i = 0;
      label336:
      if (i < j)
      {
        locala = (a)((List)localObject1).get(i);
        localObject2 = locala.bMF;
        paramAnonymousMessage = null;
        if (p.dY(locala.bMJ)) {
          paramAnonymousMessage = ((t)localObject2).dP(locala.key);
        }
        if (paramAnonymousMessage == null) {
          break label448;
        }
        ((t)localObject2).a(paramAnonymousMessage, t.d.bOn, locala);
        if (((t)localObject2).bOj) {
          ag.b("Main", "completed", locala.bMG.Au(), "from " + t.d.bOn);
        }
      }
      for (;;)
      {
        i += 1;
        break label336;
        break;
        label448:
        ((t)localObject2).c(locala);
        if (((t)localObject2).bOj) {
          ag.j("Main", "resumed", locala.bMG.Au());
        }
      }
    }
  };
  static volatile t bNZ = null;
  final i bMX;
  final d bMY;
  final aa bMZ;
  private final c bOa;
  final f bOb;
  private final b bOc;
  final List<y> bOd;
  final Map<Object, a> bOe;
  final Map<ImageView, h> bOf;
  final ReferenceQueue<Object> bOg;
  final Bitmap.Config bOh;
  boolean bOi;
  volatile boolean bOj;
  final Context context;
  boolean shutdown;
  
  public t(Context paramContext, i parami, d paramd, c paramc, f paramf, List<y> paramList, aa paramaa, Bitmap.Config paramConfig, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.context = paramContext;
    this.bMX = parami;
    this.bMY = paramd;
    this.bOa = paramc;
    this.bOb = paramf;
    this.bOh = paramConfig;
    if (paramList != null) {}
    for (int i = paramList.size();; i = 0)
    {
      paramd = new ArrayList(i + 7);
      paramd.add(new z(paramContext));
      if (paramList != null) {
        paramd.addAll(paramList);
      }
      paramd.add(new f(paramContext));
      paramd.add(new o(paramContext));
      paramd.add(new g(paramContext));
      paramd.add(new b(paramContext));
      paramd.add(new k(paramContext));
      paramd.add(new r(parami.bNs, paramaa));
      this.bOd = Collections.unmodifiableList(paramd);
      this.bMZ = paramaa;
      this.bOe = new WeakHashMap();
      this.bOf = new WeakHashMap();
      this.bOi = paramBoolean1;
      this.bOj = paramBoolean2;
      this.bOg = new ReferenceQueue();
      this.bOc = new b(this.bOg, bNY);
      this.bOc.start();
      return;
    }
  }
  
  final void a(Bitmap paramBitmap, d paramd, a parama)
  {
    if (parama.bMO) {}
    do
    {
      do
      {
        return;
        if (!parama.bMN) {
          this.bOe.remove(parama.getTarget());
        }
        if (paramBitmap == null) {
          break;
        }
        if (paramd == null) {
          throw new AssertionError("LoadedFrom cannot be null.");
        }
        parama.a(paramBitmap, paramd);
      } while (!this.bOj);
      ag.b("Main", "completed", parama.bMG.Au(), "from " + paramd);
      return;
      parama.error();
    } while (!this.bOj);
    ag.j("Main", "errored", parama.bMG.Au());
  }
  
  public final void ai(Object paramObject)
  {
    i locali = this.bMX;
    locali.handler.sendMessage(locali.handler.obtainMessage(11, paramObject));
  }
  
  public final void aj(Object paramObject)
  {
    i locali = this.bMX;
    locali.handler.sendMessage(locali.handler.obtainMessage(12, paramObject));
  }
  
  public final void ak(Object paramObject)
  {
    ag.AC();
    Object localObject = (a)this.bOe.remove(paramObject);
    if (localObject != null)
    {
      ((a)localObject).cancel();
      i locali = this.bMX;
      locali.handler.sendMessage(locali.handler.obtainMessage(2, localObject));
    }
    if ((paramObject instanceof ImageView))
    {
      paramObject = (ImageView)paramObject;
      paramObject = (h)this.bOf.remove(paramObject);
      if (paramObject != null)
      {
        ((h)paramObject).bNp = null;
        localObject = (ImageView)((h)paramObject).bMH.get();
        if (localObject != null)
        {
          localObject = ((ImageView)localObject).getViewTreeObserver();
          if (((ViewTreeObserver)localObject).isAlive()) {
            ((ViewTreeObserver)localObject).removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener)paramObject);
          }
        }
      }
    }
  }
  
  public final void c(a parama)
  {
    Object localObject = parama.getTarget();
    if ((localObject != null) && (this.bOe.get(localObject) != parama))
    {
      ak(localObject);
      this.bOe.put(localObject, parama);
    }
    localObject = this.bMX;
    ((i)localObject).handler.sendMessage(((i)localObject).handler.obtainMessage(1, parama));
  }
  
  public final x dO(String paramString)
  {
    if (paramString == null) {
      return new x(this, null);
    }
    if (paramString.trim().length() == 0) {
      throw new IllegalArgumentException("Path must not be empty.");
    }
    return k(Uri.parse(paramString));
  }
  
  public final Bitmap dP(String paramString)
  {
    paramString = this.bMY.dN(paramString);
    if (paramString != null)
    {
      this.bMZ.AB();
      return paramString;
    }
    this.bMZ.handler.sendEmptyMessage(1);
    return paramString;
  }
  
  public final x k(Uri paramUri)
  {
    return new x(this, paramUri);
  }
  
  public static final class a
  {
    public d bMY;
    public ExecutorService bNr;
    public j bNs;
    public t.c bOa;
    public List<y> bOd;
    public Bitmap.Config bOh;
    public boolean bOi;
    public boolean bOj;
    public t.f bOk;
    public final Context context;
    
    public a(Context paramContext)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null.");
      }
      this.context = paramContext.getApplicationContext();
    }
  }
  
  private static final class b
    extends Thread
  {
    private final ReferenceQueue<Object> bOg;
    private final Handler handler;
    
    b(ReferenceQueue<Object> paramReferenceQueue, Handler paramHandler)
    {
      this.bOg = paramReferenceQueue;
      this.handler = paramHandler;
      setDaemon(true);
      setName("Picasso-refQueue");
    }
    
    public final void run()
    {
      Process.setThreadPriority(10);
      try
      {
        for (;;)
        {
          a.a locala = (a.a)this.bOg.remove(1000L);
          Message localMessage = this.handler.obtainMessage();
          if (locala != null)
          {
            localMessage.what = 3;
            localMessage.obj = locala.bMP;
            this.handler.sendMessage(localMessage);
          }
          else
          {
            localMessage.recycle();
          }
        }
        return;
      }
      catch (Exception localException)
      {
        this.handler.post(new Runnable()
        {
          public final void run()
          {
            throw new RuntimeException(localException);
          }
        });
        return;
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public static abstract interface c {}
  
  public static enum d
  {
    final int bOq;
    
    private d(int paramInt)
    {
      this.bOq = paramInt;
    }
  }
  
  public static enum e
  {
    public static final int bOs = 1;
    public static final int bOt = 2;
    public static final int bOu = 3;
  }
  
  public static abstract interface f
  {
    public static final f bOw = new f()
    {
      public final w c(w paramAnonymousw)
      {
        return paramAnonymousw;
      }
    };
    
    public abstract w c(w paramw);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */