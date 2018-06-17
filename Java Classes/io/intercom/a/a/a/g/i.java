package io.intercom.a.a.a.g;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.support.v4.g.k.a;
import android.util.Log;
import io.intercom.a.a.a.c.b.a.b;
import io.intercom.a.a.a.c.b.g.a;
import io.intercom.a.a.a.c.b.g.d;
import io.intercom.a.a.a.c.b.g.f;
import io.intercom.a.a.a.c.b.g.g;
import io.intercom.a.a.a.c.b.j.a;
import io.intercom.a.a.a.c.b.j.b;
import io.intercom.a.a.a.c.b.j.d;
import io.intercom.a.a.a.c.b.k;
import io.intercom.a.a.a.c.b.l;
import io.intercom.a.a.a.c.b.m;
import io.intercom.a.a.a.c.b.o;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.b.r;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.i.a.a.a;
import io.intercom.a.a.a.i.a.a.c;
import io.intercom.a.a.a.i.a.b;
import io.intercom.a.a.a.i.a.b.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class i<R>
  implements io.intercom.a.a.a.g.a.g, c, h, a.c
{
  private static final k.a<i<?>> cKT = io.intercom.a.a.a.i.a.a.a(new a.a() {});
  private static final boolean cQf = Log.isLoggable("Request", 2);
  private Drawable bMM;
  private Drawable bOV;
  private io.intercom.a.a.a.c.b.j cFq;
  private io.intercom.a.a.a.e cFu;
  private Class<R> cGh;
  private g cGi;
  private Object cGk;
  private f<R> cGl;
  private u<R> cIN;
  private io.intercom.a.a.a.g cJg;
  private final b cJl;
  private int cPW;
  private int cPX;
  private Drawable cPZ;
  private boolean cQe;
  private f<R> cQg;
  private d cQh;
  private io.intercom.a.a.a.g.a.h<R> cQi;
  private io.intercom.a.a.a.g.b.e<? super R> cQj;
  private j.d cQk;
  private int cQl;
  private Context context;
  private int height;
  private long startTime;
  private final String tag;
  private int width;
  
  i()
  {
    if (cQf) {}
    for (String str = String.valueOf(super.hashCode());; str = null)
    {
      this.tag = str;
      this.cJl = new b.a();
      return;
    }
  }
  
  private Drawable AA()
  {
    if (this.bOV == null)
    {
      this.bOV = this.cGi.bOV;
      if ((this.bOV == null) && (this.cGi.cPV > 0)) {
        this.bOV = fp(this.cGi.cPV);
      }
    }
    return this.bOV;
  }
  
  private void JD()
  {
    if (this.cQe) {
      throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
    }
  }
  
  private Drawable JE()
  {
    if (this.cPZ == null)
    {
      this.cPZ = this.cGi.cPZ;
      if ((this.cPZ == null) && (this.cGi.cQa > 0)) {
        this.cPZ = fp(this.cGi.cQa);
      }
    }
    return this.cPZ;
  }
  
  private boolean JF()
  {
    return (this.cQh == null) || (this.cQh.c(this));
  }
  
  private boolean JG()
  {
    return (this.cQh == null) || (!this.cQh.Jv());
  }
  
  public static <R> i<R> a(Context paramContext, io.intercom.a.a.a.e parame, Object paramObject, Class<R> paramClass, g paramg, int paramInt1, int paramInt2, io.intercom.a.a.a.g paramg1, io.intercom.a.a.a.g.a.h<R> paramh, f<R> paramf1, f<R> paramf2, d paramd, io.intercom.a.a.a.c.b.j paramj, io.intercom.a.a.a.g.b.e<? super R> parame1)
  {
    i locali2 = (i)cKT.as();
    i locali1 = locali2;
    if (locali2 == null) {
      locali1 = new i();
    }
    locali1.context = paramContext;
    locali1.cFu = parame;
    locali1.cGk = paramObject;
    locali1.cGh = paramClass;
    locali1.cGi = paramg;
    locali1.cPX = paramInt1;
    locali1.cPW = paramInt2;
    locali1.cJg = paramg1;
    locali1.cQi = paramh;
    locali1.cQg = paramf1;
    locali1.cGl = paramf2;
    locali1.cQh = paramd;
    locali1.cFq = paramj;
    locali1.cQj = parame1;
    locali1.cQl = a.cQm;
    return locali1;
  }
  
  private void a(p paramp, int paramInt)
  {
    Object localObject = null;
    this.cJl.JX();
    int i = this.cFu.logLevel;
    if (i <= paramInt)
    {
      Log.w("Glide", "Load failed for " + this.cGk + " with size [" + this.width + "x" + this.height + "]", paramp);
      if (i <= 4) {
        paramp.eX("Glide");
      }
    }
    this.cQk = null;
    this.cQl = a.cQq;
    this.cQe = true;
    try
    {
      if (((this.cGl == null) || (!this.cGl.onLoadFailed(paramp, this.cGk, this.cQi, JG()))) && ((this.cQg == null) || (!this.cQg.onLoadFailed(paramp, this.cGk, this.cQi, JG()))) && (JF()))
      {
        if (this.cGk == null) {
          localObject = JE();
        }
        paramp = (p)localObject;
        if (localObject == null)
        {
          if (this.bMM == null)
          {
            this.bMM = this.cGi.cPT;
            if ((this.bMM == null) && (this.cGi.cPU > 0)) {
              this.bMM = fp(this.cGi.cPU);
            }
          }
          paramp = this.bMM;
        }
        localObject = paramp;
        if (paramp == null) {
          localObject = AA();
        }
        this.cQi.onLoadFailed((Drawable)localObject);
      }
      this.cQe = false;
      if (this.cQh != null) {
        this.cQh.g(this);
      }
      return;
    }
    finally
    {
      this.cQe = false;
    }
  }
  
  private static int f(int paramInt, float paramFloat)
  {
    if (paramInt == Integer.MIN_VALUE) {
      return paramInt;
    }
    return Math.round(paramInt * paramFloat);
  }
  
  private void f(u<?> paramu)
  {
    
    if ((paramu instanceof o))
    {
      ((o)paramu).release();
      this.cIN = null;
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  private void fb(String paramString)
  {
    Log.v("Request", paramString + " this: " + this.tag);
  }
  
  private Drawable fp(int paramInt)
  {
    if (this.cGi.cQb != null) {}
    for (Resources.Theme localTheme = this.cGi.cQb;; localTheme = this.context.getTheme()) {
      return io.intercom.a.a.a.c.d.c.a.a(this.cFu, paramInt, localTheme);
    }
  }
  
  public final b Ij()
  {
    return this.cJl;
  }
  
  public final boolean Ju()
  {
    return isComplete();
  }
  
  public final void a(p paramp)
  {
    a(paramp, 5);
  }
  
  public final void a(u<?> paramu, io.intercom.a.a.a.c.a parama)
  {
    this.cJl.JX();
    this.cQk = null;
    if (paramu == null) {
      a(new p("Expected to receive a Resource<R> with an object of " + this.cGh + " inside, but instead got null."), 5);
    }
    for (;;)
    {
      return;
      Object localObject = paramu.get();
      if ((localObject == null) || (!this.cGh.isAssignableFrom(localObject.getClass())))
      {
        f(paramu);
        StringBuilder localStringBuilder = new StringBuilder("Expected to receive an object of ").append(this.cGh).append(" but instead got ");
        if (localObject != null)
        {
          parama = localObject.getClass();
          parama = localStringBuilder.append(parama).append("{").append(localObject).append("} inside Resource{").append(paramu).append("}.");
          if (localObject == null) {
            break label195;
          }
        }
        label195:
        for (paramu = "";; paramu = " To indicate failure return a null Resource object, rather than a Resource object containing null data.")
        {
          a(new p(paramu), 5);
          return;
          parama = "";
          break;
        }
      }
      if ((this.cQh == null) || (this.cQh.b(this))) {}
      for (int i = 1; i == 0; i = 0)
      {
        f(paramu);
        this.cQl = a.cQp;
        return;
      }
      boolean bool = JG();
      this.cQl = a.cQp;
      this.cIN = paramu;
      if (this.cFu.logLevel <= 3) {
        Log.d("Glide", "Finished loading " + localObject.getClass().getSimpleName() + " from " + parama + " for " + this.cGk + " with size [" + this.width + "x" + this.height + "] in " + io.intercom.a.a.a.i.d.V(this.startTime) + " ms");
      }
      this.cQe = true;
      try
      {
        if (((this.cGl == null) || (!this.cGl.onResourceReady(localObject, this.cGk, this.cQi, parama, bool))) && ((this.cQg == null) || (!this.cQg.onResourceReady(localObject, this.cGk, this.cQi, parama, bool))))
        {
          paramu = this.cQj.c(parama);
          this.cQi.onResourceReady(localObject, paramu);
        }
        this.cQe = false;
        if (this.cQh == null) {
          continue;
        }
        this.cQh.f(this);
        return;
      }
      finally
      {
        this.cQe = false;
      }
    }
  }
  
  public final boolean a(c paramc)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramc instanceof i))
    {
      paramc = (i)paramc;
      bool1 = bool2;
      if (this.cPX == paramc.cPX)
      {
        bool1 = bool2;
        if (this.cPW == paramc.cPW)
        {
          bool1 = bool2;
          if (io.intercom.a.a.a.i.i.j(this.cGk, paramc.cGk))
          {
            bool1 = bool2;
            if (this.cGh.equals(paramc.cGh))
            {
              bool1 = bool2;
              if (this.cGi.equals(paramc.cGi))
              {
                bool1 = bool2;
                if (this.cJg == paramc.cJg)
                {
                  if (this.cGl == null) {
                    break label123;
                  }
                  bool1 = bool2;
                  if (paramc.cGl == null) {}
                }
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      bool1 = true;
      label123:
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramc.cGl != null);
    }
  }
  
  public final void aP(int paramInt1, int paramInt2)
  {
    this.cJl.JX();
    if (cQf) {
      fb("Got onSizeReady in " + io.intercom.a.a.a.i.d.V(this.startTime));
    }
    if (this.cQl != a.cQo) {
      return;
    }
    this.cQl = a.cQn;
    float f = this.cGi.cPS;
    this.width = f(paramInt1, f);
    this.height = f(paramInt2, f);
    if (cQf) {
      fb("finished setup for calling load in " + io.intercom.a.a.a.i.d.V(this.startTime));
    }
    io.intercom.a.a.a.c.b.j localj = this.cFq;
    io.intercom.a.a.a.e locale = this.cFu;
    Object localObject3 = this.cGk;
    io.intercom.a.a.a.c.h localh = this.cGi.cIX;
    paramInt1 = this.width;
    paramInt2 = this.height;
    Class localClass1 = this.cGi.cJb;
    Class localClass2 = this.cGh;
    io.intercom.a.a.a.g localg = this.cJg;
    io.intercom.a.a.a.c.b.i locali = this.cGi.diskCacheStrategy;
    Map localMap = this.cGi.cJd;
    boolean bool1 = this.cGi.cJh;
    boolean bool2 = this.cGi.cJi;
    io.intercom.a.a.a.c.j localj1 = this.cGi.cIZ;
    boolean bool3 = this.cGi.cIM;
    boolean bool4 = this.cGi.cQd;
    boolean bool5 = this.cGi.cKC;
    boolean bool6 = this.cGi.cJu;
    io.intercom.a.a.a.i.i.JS();
    long l = io.intercom.a.a.a.i.d.JQ();
    m localm = new m(localObject3, localh, paramInt1, paramInt2, localMap, localClass1, localClass2, localj1);
    if (!bool3)
    {
      localObject2 = null;
      if (localObject2 == null) {
        break label467;
      }
      a((u)localObject2, io.intercom.a.a.a.c.a.cHG);
      if (Log.isLoggable("Engine", 2)) {
        io.intercom.a.a.a.c.b.j.a("Loaded resource from active resources", l, localm);
      }
      localObject1 = null;
    }
    for (;;)
    {
      this.cQk = ((j.d)localObject1);
      if (this.cQl != a.cQn) {
        this.cQk = null;
      }
      if (!cQf) {
        break;
      }
      fb("finished onSizeReady in " + io.intercom.a.a.a.i.d.V(this.startTime));
      return;
      localObject2 = localj.cKn;
      localObject4 = (a.b)((io.intercom.a.a.a.c.b.a)localObject2).cIE.get(localm);
      if (localObject4 == null) {
        localObject1 = null;
      }
      for (;;)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          break;
        }
        ((o)localObject1).acquire();
        localObject2 = localObject1;
        break;
        localObject1 = (o)((a.b)localObject4).get();
        if (localObject1 == null) {
          ((io.intercom.a.a.a.c.b.a)localObject2).a((a.b)localObject4);
        }
      }
      label467:
      if (!bool3)
      {
        localObject2 = null;
        if (localObject2 != null)
        {
          a((u)localObject2, io.intercom.a.a.a.c.a.cHG);
          if (Log.isLoggable("Engine", 2)) {
            io.intercom.a.a.a.c.b.j.a("Loaded resource from cache", l, localm);
          }
          localObject1 = null;
        }
      }
      else
      {
        localObject1 = localj.cKi.b(localm);
        if (localObject1 == null) {
          localObject1 = null;
        }
        for (;;)
        {
          localObject2 = localObject1;
          if (localObject1 == null) {
            break;
          }
          ((o)localObject1).acquire();
          localj.cKn.a(localm, (o)localObject1);
          localObject2 = localObject1;
          break;
          if ((localObject1 instanceof o)) {
            localObject1 = (o)localObject1;
          } else {
            localObject1 = new o((u)localObject1, true, true);
          }
        }
      }
      localObject1 = (k)localj.cKg.bv(bool6).get(localm);
      if (localObject1 == null) {
        break label674;
      }
      ((k)localObject1).a(this);
      if (Log.isLoggable("Engine", 2)) {
        io.intercom.a.a.a.c.b.j.a("Added to existing load", l, localm);
      }
      localObject1 = new j.d(this, (k)localObject1);
    }
    label674:
    Object localObject2 = (k)io.intercom.a.a.a.i.h.checkNotNull((k)localj.cKj.cJm.as(), "Argument must not be null");
    ((k)localObject2).cIL = localm;
    ((k)localObject2).cIM = bool3;
    ((k)localObject2).cKB = bool4;
    ((k)localObject2).cKC = bool5;
    ((k)localObject2).cJu = bool6;
    Object localObject1 = localj.cKm;
    Object localObject4 = (io.intercom.a.a.a.c.b.g)io.intercom.a.a.a.i.h.checkNotNull((io.intercom.a.a.a.c.b.g)((j.a)localObject1).cJm.as(), "Argument must not be null");
    int i = ((j.a)localObject1).cKo;
    ((j.a)localObject1).cKo = (i + 1);
    localObject1 = ((io.intercom.a.a.a.c.b.g)localObject4).cJj;
    g.d locald = ((io.intercom.a.a.a.c.b.g)localObject4).cJc;
    ((io.intercom.a.a.a.c.b.f)localObject1).cFu = locale;
    ((io.intercom.a.a.a.c.b.f)localObject1).cGk = localObject3;
    ((io.intercom.a.a.a.c.b.f)localObject1).cIX = localh;
    ((io.intercom.a.a.a.c.b.f)localObject1).width = paramInt1;
    ((io.intercom.a.a.a.c.b.f)localObject1).height = paramInt2;
    ((io.intercom.a.a.a.c.b.f)localObject1).diskCacheStrategy = locali;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJb = localClass1;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJc = locald;
    ((io.intercom.a.a.a.c.b.f)localObject1).cGh = localClass2;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJg = localg;
    ((io.intercom.a.a.a.c.b.f)localObject1).cIZ = localj1;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJd = localMap;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJh = bool1;
    ((io.intercom.a.a.a.c.b.f)localObject1).cJi = bool2;
    ((io.intercom.a.a.a.c.b.g)localObject4).cFu = locale;
    ((io.intercom.a.a.a.c.b.g)localObject4).cIX = localh;
    ((io.intercom.a.a.a.c.b.g)localObject4).cJg = localg;
    ((io.intercom.a.a.a.c.b.g)localObject4).cJp = localm;
    ((io.intercom.a.a.a.c.b.g)localObject4).width = paramInt1;
    ((io.intercom.a.a.a.c.b.g)localObject4).height = paramInt2;
    ((io.intercom.a.a.a.c.b.g)localObject4).diskCacheStrategy = locali;
    ((io.intercom.a.a.a.c.b.g)localObject4).cJu = bool6;
    ((io.intercom.a.a.a.c.b.g)localObject4).cIZ = localj1;
    ((io.intercom.a.a.a.c.b.g)localObject4).cJq = ((g.a)localObject2);
    ((io.intercom.a.a.a.c.b.g)localObject4).order = i;
    ((io.intercom.a.a.a.c.b.g)localObject4).cJs = g.f.cJM;
    localj.cKg.bv(((k)localObject2).cJu).put(localm, localObject2);
    ((k)localObject2).a(this);
    ((k)localObject2).cKI = ((io.intercom.a.a.a.c.b.g)localObject4);
    localObject1 = ((io.intercom.a.a.a.c.b.g)localObject4).a(g.g.cJQ);
    if ((localObject1 == g.g.cJR) || (localObject1 == g.g.cJS))
    {
      paramInt1 = 1;
      label1040:
      if (paramInt1 == 0) {
        break label1098;
      }
    }
    label1098:
    for (localObject1 = ((k)localObject2).cFD;; localObject1 = ((k)localObject2).Ir())
    {
      ((io.intercom.a.a.a.c.b.c.a)localObject1).execute((Runnable)localObject4);
      if (Log.isLoggable("Engine", 2)) {
        io.intercom.a.a.a.c.b.j.a("Started new load", l, localm);
      }
      localObject1 = new j.d(this, (k)localObject2);
      break;
      paramInt1 = 0;
      break label1040;
    }
  }
  
  public final void begin()
  {
    JD();
    this.cJl.JX();
    this.startTime = io.intercom.a.a.a.i.d.JQ();
    if (this.cGk == null)
    {
      if (io.intercom.a.a.a.i.i.aR(this.cPX, this.cPW))
      {
        this.width = this.cPX;
        this.height = this.cPW;
      }
      if (JE() == null) {}
      for (int i = 5;; i = 3)
      {
        a(new p("Received null model"), i);
        return;
      }
    }
    if (this.cQl == a.cQn) {
      throw new IllegalArgumentException("Cannot restart a running request");
    }
    if (this.cQl == a.cQp)
    {
      a(this.cIN, io.intercom.a.a.a.c.a.cHG);
      return;
    }
    this.cQl = a.cQo;
    if (io.intercom.a.a.a.i.i.aR(this.cPX, this.cPW)) {
      aP(this.cPX, this.cPW);
    }
    for (;;)
    {
      if (((this.cQl == a.cQn) || (this.cQl == a.cQo)) && (JF())) {
        this.cQi.onLoadStarted(AA());
      }
      if (!cQf) {
        break;
      }
      fb("finished run method in " + io.intercom.a.a.a.i.d.V(this.startTime));
      return;
      this.cQi.getSize(this);
    }
  }
  
  public final void clear()
  {
    int j = 1;
    io.intercom.a.a.a.i.i.JS();
    JD();
    this.cJl.JX();
    if (this.cQl == a.cQs) {
      return;
    }
    JD();
    this.cJl.JX();
    this.cQi.removeCallback(this);
    this.cQl = a.cQr;
    Object localObject;
    k localk;
    if (this.cQk != null)
    {
      localObject = this.cQk;
      localk = ((j.d)localObject).cKv;
      localObject = ((j.d)localObject).cKw;
      io.intercom.a.a.a.i.i.JS();
      localk.cJl.JX();
      if ((localk.cKD) || (localk.cKF))
      {
        if (localk.cKG == null) {
          localk.cKG = new ArrayList(2);
        }
        if (!localk.cKG.contains(localObject)) {
          localk.cKG.add(localObject);
        }
        this.cQk = null;
      }
    }
    else
    {
      if (this.cIN != null) {
        f(this.cIN);
      }
      i = j;
      if (this.cQh != null) {
        if (!this.cQh.d(this)) {
          break label317;
        }
      }
    }
    label317:
    for (int i = j;; i = 0)
    {
      if (i != 0) {
        this.cQi.onLoadCleared(AA());
      }
      this.cQl = a.cQs;
      return;
      localk.cKz.remove(localObject);
      if ((!localk.cKz.isEmpty()) || (localk.cKF) || (localk.cKD) || (localk.cIs)) {
        break;
      }
      localk.cIs = true;
      localObject = localk.cKI;
      ((io.intercom.a.a.a.c.b.g)localObject).cIs = true;
      localObject = ((io.intercom.a.a.a.c.b.g)localObject).cJB;
      if (localObject != null) {
        ((io.intercom.a.a.a.c.b.e)localObject).cancel();
      }
      localk.cKr.a(localk, localk.cIL);
      break;
    }
  }
  
  public final boolean isCancelled()
  {
    return (this.cQl == a.cQr) || (this.cQl == a.cQs);
  }
  
  public final boolean isComplete()
  {
    return this.cQl == a.cQp;
  }
  
  public final boolean isFailed()
  {
    return this.cQl == a.cQq;
  }
  
  public final boolean isRunning()
  {
    return (this.cQl == a.cQn) || (this.cQl == a.cQo);
  }
  
  public final void pause()
  {
    clear();
    this.cQl = a.cQt;
  }
  
  public final void recycle()
  {
    JD();
    this.context = null;
    this.cFu = null;
    this.cGk = null;
    this.cGh = null;
    this.cGi = null;
    this.cPX = -1;
    this.cPW = -1;
    this.cQi = null;
    this.cGl = null;
    this.cQg = null;
    this.cQh = null;
    this.cQj = null;
    this.cQk = null;
    this.bMM = null;
    this.bOV = null;
    this.cPZ = null;
    this.width = -1;
    this.height = -1;
    cKT.j(this);
  }
  
  private static enum a
  {
    public static final int cQm = 1;
    public static final int cQn = 2;
    public static final int cQo = 3;
    public static final int cQp = 4;
    public static final int cQq = 5;
    public static final int cQr = 6;
    public static final int cQs = 7;
    public static final int cQt = 8;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */