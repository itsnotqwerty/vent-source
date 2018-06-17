package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public final class c
{
  private static c Bk;
  private static final Object mLock = new Object();
  private final Context Bg;
  public final HashMap<BroadcastReceiver, ArrayList<b>> Bh = new HashMap();
  public final HashMap<String, ArrayList<b>> Bi = new HashMap();
  private final ArrayList<a> Bj = new ArrayList();
  private final Handler mHandler;
  
  private c(Context paramContext)
  {
    this.Bg = paramContext;
    this.mHandler = new Handler(paramContext.getMainLooper())
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default: 
          super.handleMessage(paramAnonymousMessage);
          return;
        }
        c.a(c.this);
      }
    };
  }
  
  public static c i(Context paramContext)
  {
    synchronized (mLock)
    {
      if (Bk == null) {
        Bk = new c(paramContext.getApplicationContext());
      }
      paramContext = Bk;
      return paramContext;
    }
  }
  
  public final void a(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    synchronized (this.Bh)
    {
      b localb = new b(paramIntentFilter, paramBroadcastReceiver);
      Object localObject2 = (ArrayList)this.Bh.get(paramBroadcastReceiver);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new ArrayList(1);
        this.Bh.put(paramBroadcastReceiver, localObject1);
      }
      ((ArrayList)localObject1).add(localb);
      int i = 0;
      while (i < paramIntentFilter.countActions())
      {
        localObject2 = paramIntentFilter.getAction(i);
        localObject1 = (ArrayList)this.Bi.get(localObject2);
        paramBroadcastReceiver = (BroadcastReceiver)localObject1;
        if (localObject1 == null)
        {
          paramBroadcastReceiver = new ArrayList(1);
          this.Bi.put(localObject2, paramBroadcastReceiver);
        }
        paramBroadcastReceiver.add(localb);
        i += 1;
      }
      return;
    }
  }
  
  public final boolean a(Intent paramIntent)
  {
    int i;
    label155:
    int j;
    Object localObject;
    int k;
    ArrayList localArrayList1;
    synchronized (this.Bh)
    {
      String str1 = paramIntent.getAction();
      String str2 = paramIntent.resolveTypeIfNeeded(this.Bg.getContentResolver());
      Uri localUri = paramIntent.getData();
      String str3 = paramIntent.getScheme();
      Set localSet = paramIntent.getCategories();
      if ((paramIntent.getFlags() & 0x8) == 0) {
        break label485;
      }
      i = 1;
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Resolving type " + str2 + " scheme " + str3 + " of intent " + paramIntent);
      }
      ArrayList localArrayList2 = (ArrayList)this.Bi.get(paramIntent.getAction());
      if (localArrayList2 == null) {
        break label462;
      }
      if (i == 0) {
        break label470;
      }
      Log.v("LocalBroadcastManager", "Action list: " + localArrayList2);
      break label470;
      if (j >= localArrayList2.size()) {
        break label521;
      }
      localObject = (b)localArrayList2.get(j);
      if (i != 0) {
        Log.v("LocalBroadcastManager", "Matching against filter " + ((b)localObject).filter);
      }
      if (((b)localObject).Bo)
      {
        if (i == 0) {
          break label490;
        }
        Log.v("LocalBroadcastManager", "  Filter's target already added");
      }
      else
      {
        k = ((b)localObject).filter.match(str1, str2, str3, localUri, localSet, "LocalBroadcastManager");
        if (k >= 0)
        {
          if (i != 0) {
            Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(k));
          }
          if (localArrayList1 != null) {
            break label467;
          }
          localArrayList1 = new ArrayList();
          label299:
          localArrayList1.add(localObject);
          ((b)localObject).Bo = true;
        }
      }
    }
    if (i != 0) {
      switch (k)
      {
      default: 
        localObject = "unknown reason";
        label364:
        Log.v("LocalBroadcastManager", "  Filter did not match: " + (String)localObject);
        break;
      }
    }
    for (;;)
    {
      if (i < localArrayList1.size())
      {
        ((b)localArrayList1.get(i)).Bo = false;
        i += 1;
      }
      else
      {
        this.Bj.add(new a(paramIntent, localArrayList1));
        if (!this.mHandler.hasMessages(1)) {
          this.mHandler.sendEmptyMessage(1);
        }
        return true;
        label462:
        label467:
        label470:
        label485:
        label490:
        label521:
        do
        {
          return false;
          break label299;
          localArrayList1 = null;
          j = 0;
          break label155;
          for (;;)
          {
            j += 1;
            break label155;
            i = 0;
            break;
          }
          localObject = "action";
          break label364;
          localObject = "category";
          break label364;
          localObject = "data";
          break label364;
          localObject = "type";
          break label364;
        } while (localArrayList1 == null);
        i = 0;
      }
    }
  }
  
  private static final class a
  {
    final ArrayList<c.b> Bm;
    final Intent intent;
    
    a(Intent paramIntent, ArrayList<c.b> paramArrayList)
    {
      this.intent = paramIntent;
      this.Bm = paramArrayList;
    }
  }
  
  private static final class b
  {
    public final BroadcastReceiver Bn;
    boolean Bo;
    public boolean Bp;
    public final IntentFilter filter;
    
    b(IntentFilter paramIntentFilter, BroadcastReceiver paramBroadcastReceiver)
    {
      this.filter = paramIntentFilter;
      this.Bn = paramBroadcastReceiver;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(128);
      localStringBuilder.append("Receiver{");
      localStringBuilder.append(this.Bn);
      localStringBuilder.append(" filter=");
      localStringBuilder.append(this.filter);
      if (this.Bp) {
        localStringBuilder.append(" DEAD");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/content/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */