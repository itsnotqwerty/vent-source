package com.c.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public final class i
{
  final d bMY;
  final aa bMZ;
  final boolean bNA;
  boolean bNB;
  final b bNq = new b();
  final ExecutorService bNr;
  final j bNs;
  final Map<String, c> bNt;
  final Map<Object, a> bNu;
  final Map<Object, a> bNv;
  final Set<Object> bNw;
  final Handler bNx;
  final List<c> bNy;
  final c bNz;
  final Context context;
  final Handler handler;
  
  public i(Context paramContext, ExecutorService paramExecutorService, Handler paramHandler, j paramj, d paramd, aa paramaa)
  {
    this.bNq.start();
    ag.a(this.bNq.getLooper());
    this.context = paramContext;
    this.bNr = paramExecutorService;
    this.bNt = new LinkedHashMap();
    this.bNu = new WeakHashMap();
    this.bNv = new WeakHashMap();
    this.bNw = new HashSet();
    this.handler = new a(this.bNq.getLooper(), this);
    this.bNs = paramj;
    this.bNx = paramHandler;
    this.bMY = paramd;
    this.bMZ = paramaa;
    this.bNy = new ArrayList(4);
    this.bNB = ag.aB(this.context);
    this.bNA = ag.hasPermission(paramContext, "android.permission.ACCESS_NETWORK_STATE");
    this.bNz = new c(this);
    paramContext = this.bNz;
    paramExecutorService = new IntentFilter();
    paramExecutorService.addAction("android.intent.action.AIRPLANE_MODE");
    if (paramContext.bMX.bNA) {
      paramExecutorService.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }
    paramContext.bMX.context.registerReceiver(paramContext, paramExecutorService);
  }
  
  private void b(a parama)
  {
    Object localObject = parama.getTarget();
    if (localObject != null)
    {
      parama.bMN = true;
      this.bNu.put(localObject, parama);
    }
  }
  
  private void d(c paramc)
  {
    a locala = paramc.bMP;
    if (locala != null) {
      b(locala);
    }
    paramc = paramc.bNc;
    if (paramc != null)
    {
      int j = paramc.size();
      int i = 0;
      while (i < j)
      {
        b((a)paramc.get(i));
        i += 1;
      }
    }
  }
  
  static void y(List<c> paramList)
  {
    if (paramList.isEmpty()) {}
    while (!((c)paramList.get(0)).bMF.bOj) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      c localc = (c)paramList.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(ag.f(localc));
    }
    ag.j("Dispatcher", "delivered", localStringBuilder.toString());
  }
  
  final void a(NetworkInfo paramNetworkInfo)
  {
    Object localObject;
    if ((this.bNr instanceof v))
    {
      localObject = (v)this.bNr;
      if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnectedOrConnecting())) {
        break label131;
      }
      ((v)localObject).ed(3);
    }
    while ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected()) && (!this.bNu.isEmpty()))
    {
      paramNetworkInfo = this.bNu.values().iterator();
      while (paramNetworkInfo.hasNext())
      {
        localObject = (a)paramNetworkInfo.next();
        paramNetworkInfo.remove();
        if (((a)localObject).bMF.bOj) {
          ag.j("Dispatcher", "replaying", ((a)localObject).bMG.Au());
        }
        a((a)localObject, false);
      }
      label131:
      switch (paramNetworkInfo.getType())
      {
      default: 
        ((v)localObject).ed(3);
        break;
      case 1: 
      case 6: 
      case 9: 
        ((v)localObject).ed(4);
        break;
      case 0: 
        switch (paramNetworkInfo.getSubtype())
        {
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        default: 
          ((v)localObject).ed(3);
          break;
        case 13: 
        case 14: 
        case 15: 
          ((v)localObject).ed(3);
          break;
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 12: 
          ((v)localObject).ed(2);
          break;
        case 1: 
        case 2: 
          ((v)localObject).ed(1);
        }
        break;
      }
    }
  }
  
  final void a(a parama, boolean paramBoolean)
  {
    if (this.bNw.contains(parama.tag))
    {
      this.bNv.put(parama.getTarget(), parama);
      if (parama.bMF.bOj) {
        ag.b("Dispatcher", "paused", parama.bMG.Au(), "because tag '" + parama.tag + "' is paused");
      }
    }
    label288:
    do
    {
      do
      {
        int i;
        do
        {
          w localw;
          do
          {
            return;
            localc = (c)this.bNt.get(parama.key);
            if (localc == null) {
              break label288;
            }
            paramBoolean = localc.bMF.bOj;
            localw = parama.bMG;
            if (localc.bMP != null) {
              break;
            }
            localc.bMP = parama;
          } while (!paramBoolean);
          if ((localc.bNc == null) || (localc.bNc.isEmpty()))
          {
            ag.b("Hunter", "joined", localw.Au(), "to empty hunter");
            return;
          }
          ag.b("Hunter", "joined", localw.Au(), ag.a(localc, "to "));
          return;
          if (localc.bNc == null) {
            localc.bNc = new ArrayList(3);
          }
          localc.bNc.add(parama);
          if (paramBoolean) {
            ag.b("Hunter", "joined", localw.Au(), ag.a(localc, "to "));
          }
          i = parama.bMG.bNi;
        } while (i - 1 <= localc.bNi - 1);
        localc.bNi = i;
        return;
        if (!this.bNr.isShutdown()) {
          break;
        }
      } while (!parama.bMF.bOj);
      ag.b("Dispatcher", "ignored", parama.bMG.Au(), "because shut down");
      return;
      c localc = c.a(parama.bMF, this, this.bMY, this.bMZ, parama);
      localc.bNe = this.bNr.submit(localc);
      this.bNt.put(parama.key, localc);
      if (paramBoolean) {
        this.bNu.remove(parama.getTarget());
      }
    } while (!parama.bMF.bOj);
    ag.j("Dispatcher", "enqueued", parama.bMG.Au());
  }
  
  final void a(c paramc)
  {
    this.handler.sendMessageDelayed(this.handler.obtainMessage(5, paramc), 500L);
  }
  
  final void a(c paramc, boolean paramBoolean)
  {
    String str2;
    StringBuilder localStringBuilder;
    if (paramc.bMF.bOj)
    {
      str2 = ag.f(paramc);
      localStringBuilder = new StringBuilder("for error");
      if (!paramBoolean) {
        break label75;
      }
    }
    label75:
    for (String str1 = " (will replay)";; str1 = "")
    {
      ag.b("Dispatcher", "batched", str2, str1);
      this.bNt.remove(paramc.key);
      e(paramc);
      return;
    }
  }
  
  final void ah(Object paramObject)
  {
    if (!this.bNw.remove(paramObject)) {}
    Object localObject1;
    do
    {
      return;
      localObject1 = null;
      Iterator localIterator = this.bNv.values().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala.tag.equals(paramObject))
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((List)localObject2).add(locala);
          localIterator.remove();
          localObject1 = localObject2;
        }
      }
    } while (localObject1 == null);
    this.bNx.sendMessage(this.bNx.obtainMessage(13, localObject1));
  }
  
  final void b(c paramc)
  {
    this.handler.sendMessage(this.handler.obtainMessage(6, paramc));
  }
  
  final void c(c paramc)
  {
    boolean bool2 = true;
    if (paramc.isCancelled()) {
      return;
    }
    if (this.bNr.isShutdown())
    {
      a(paramc, false);
      return;
    }
    if (this.bNA) {}
    for (NetworkInfo localNetworkInfo = ((ConnectivityManager)ag.t(this.context, "connectivity")).getActiveNetworkInfo();; localNetworkInfo = null)
    {
      int i;
      label70:
      int j;
      label79:
      label86:
      boolean bool3;
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      {
        i = 1;
        if (paramc.bNh <= 0) {
          break label139;
        }
        j = 1;
        if (j != 0) {
          break label144;
        }
        bool1 = false;
        bool3 = paramc.bNb.At();
        if (bool1) {
          break label174;
        }
        if ((!this.bNA) || (!bool3)) {
          break label168;
        }
      }
      label139:
      label144:
      label168:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        a(paramc, bool1);
        if (!bool1) {
          break;
        }
        d(paramc);
        return;
        i = 0;
        break label70;
        j = 0;
        break label79;
        paramc.bNh -= 1;
        bool1 = paramc.bNb.b(localNetworkInfo);
        break label86;
      }
      label174:
      if ((!this.bNA) || (i != 0))
      {
        if (paramc.bMF.bOj) {
          ag.j("Dispatcher", "retrying", ag.f(paramc));
        }
        if ((paramc.awX instanceof r.a)) {
          paramc.bMK |= q.bNT.index;
        }
        paramc.bNe = this.bNr.submit(paramc);
        return;
      }
      a(paramc, bool3);
      if (!bool3) {
        break;
      }
      d(paramc);
      return;
    }
  }
  
  final void e(c paramc)
  {
    if (paramc.isCancelled()) {}
    do
    {
      return;
      this.bNy.add(paramc);
    } while (this.handler.hasMessages(7));
    this.handler.sendEmptyMessageDelayed(7, 200L);
  }
  
  private static final class a
    extends Handler
  {
    private final i bMX;
    
    public a(Looper paramLooper, i parami)
    {
      super();
      this.bMX = parami;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 3: 
      case 8: 
      default: 
        t.bNY.post(new Runnable()
        {
          public final void run()
          {
            throw new AssertionError("Unknown handler message received: " + paramMessage.what);
          }
        });
      case 1: 
      case 2: 
      case 11: 
      case 12: 
      case 4: 
        do
        {
          for (;;)
          {
            return;
            paramMessage = (a)paramMessage.obj;
            this.bMX.a(paramMessage, true);
            return;
            paramMessage = (a)paramMessage.obj;
            localObject1 = this.bMX;
            Object localObject2 = paramMessage.key;
            c localc = (c)((i)localObject1).bNt.get(localObject2);
            if (localc != null)
            {
              localc.a(paramMessage);
              if (localc.cancel())
              {
                ((i)localObject1).bNt.remove(localObject2);
                if (paramMessage.bMF.bOj) {
                  ag.j("Dispatcher", "canceled", paramMessage.bMG.Au());
                }
              }
            }
            if (((i)localObject1).bNw.contains(paramMessage.tag))
            {
              ((i)localObject1).bNv.remove(paramMessage.getTarget());
              if (paramMessage.bMF.bOj) {
                ag.b("Dispatcher", "canceled", paramMessage.bMG.Au(), "because paused request got canceled");
              }
            }
            paramMessage = (a)((i)localObject1).bNu.remove(paramMessage.getTarget());
            if ((paramMessage != null) && (paramMessage.bMF.bOj))
            {
              ag.b("Dispatcher", "canceled", paramMessage.bMG.Au(), "from replaying");
              return;
              paramMessage = paramMessage.obj;
              localObject1 = this.bMX;
              if (((i)localObject1).bNw.add(paramMessage))
              {
                localObject2 = ((i)localObject1).bNt.values().iterator();
                while (((Iterator)localObject2).hasNext())
                {
                  localc = (c)((Iterator)localObject2).next();
                  bool = localc.bMF.bOj;
                  a locala = localc.bMP;
                  List localList = localc.bNc;
                  if ((localList != null) && (!localList.isEmpty())) {}
                  for (int i = 1; (locala != null) || (i != 0); i = 0)
                  {
                    if ((locala != null) && (locala.tag.equals(paramMessage)))
                    {
                      localc.a(locala);
                      ((i)localObject1).bNv.put(locala.getTarget(), locala);
                      if (bool) {
                        ag.b("Dispatcher", "paused", locala.bMG.Au(), "because tag '" + paramMessage + "' was paused");
                      }
                    }
                    if (i == 0) {
                      break label618;
                    }
                    i = localList.size() - 1;
                    while (i >= 0)
                    {
                      locala = (a)localList.get(i);
                      if (locala.tag.equals(paramMessage))
                      {
                        localc.a(locala);
                        ((i)localObject1).bNv.put(locala.getTarget(), locala);
                        if (bool) {
                          ag.b("Dispatcher", "paused", locala.bMG.Au(), "because tag '" + paramMessage + "' was paused");
                        }
                      }
                      i -= 1;
                    }
                  }
                  continue;
                  if (localc.cancel())
                  {
                    ((Iterator)localObject2).remove();
                    if (bool) {
                      ag.b("Dispatcher", "canceled", ag.f(localc), "all actions paused");
                    }
                  }
                }
              }
            }
          }
          paramMessage = paramMessage.obj;
          this.bMX.ah(paramMessage);
          return;
          paramMessage = (c)paramMessage.obj;
          localObject1 = this.bMX;
          if (p.dZ(paramMessage.bMJ)) {
            ((i)localObject1).bMY.a(paramMessage.key, paramMessage.bNd);
          }
          ((i)localObject1).bNt.remove(paramMessage.key);
          ((i)localObject1).e(paramMessage);
        } while (!paramMessage.bMF.bOj);
        ag.b("Dispatcher", "batched", ag.f(paramMessage), "for completion");
        return;
      case 5: 
        paramMessage = (c)paramMessage.obj;
        this.bMX.c(paramMessage);
        return;
      case 6: 
        paramMessage = (c)paramMessage.obj;
        this.bMX.a(paramMessage, false);
        return;
      case 7: 
        paramMessage = this.bMX;
        localObject1 = new ArrayList(paramMessage.bNy);
        paramMessage.bNy.clear();
        paramMessage.bNx.sendMessage(paramMessage.bNx.obtainMessage(8, localObject1));
        i.y((List)localObject1);
        return;
      case 9: 
        label618:
        paramMessage = (NetworkInfo)paramMessage.obj;
        this.bMX.a(paramMessage);
        return;
      }
      Object localObject1 = this.bMX;
      if (paramMessage.arg1 == 1) {}
      for (boolean bool = true;; bool = false)
      {
        ((i)localObject1).bNB = bool;
        return;
      }
    }
  }
  
  static final class b
    extends HandlerThread
  {
    b()
    {
      super(10);
    }
  }
  
  static final class c
    extends BroadcastReceiver
  {
    final i bMX;
    
    c(i parami)
    {
      this.bMX = parami;
    }
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {}
      String str;
      do
      {
        do
        {
          return;
          str = paramIntent.getAction();
          if (!"android.intent.action.AIRPLANE_MODE".equals(str)) {
            break;
          }
        } while (!paramIntent.hasExtra("state"));
        paramContext = this.bMX;
        boolean bool = paramIntent.getBooleanExtra("state", false);
        paramIntent = paramContext.handler;
        paramContext = paramContext.handler;
        if (bool) {}
        for (int i = 1;; i = 0)
        {
          paramIntent.sendMessage(paramContext.obtainMessage(10, i, 0));
          return;
        }
      } while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(str));
      paramIntent = (ConnectivityManager)ag.t(paramContext, "connectivity");
      paramContext = this.bMX;
      paramIntent = paramIntent.getActiveNetworkInfo();
      paramContext.handler.sendMessage(paramContext.handler.obtainMessage(9, paramIntent));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */