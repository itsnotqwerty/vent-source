package io.branch.referral;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class z
{
  private static z cBv;
  private SharedPreferences.Editor cBw;
  final List<r> cBx;
  private SharedPreferences cvm;
  
  @SuppressLint({"CommitPrefEdits"})
  private z(Context paramContext)
  {
    this.cvm = paramContext.getSharedPreferences("BNC_Server_Request_Queue", 0);
    this.cBw = this.cvm.edit();
    this.cBx = bX(paramContext);
  }
  
  public static z bW(Context paramContext)
  {
    if (cBv == null) {}
    try
    {
      if (cBv == null) {
        cBv = new z(paramContext);
      }
      return cBv;
    }
    finally {}
  }
  
  private List<r> bX(Context paramContext)
  {
    localList = Collections.synchronizedList(new LinkedList());
    Object localObject = this.cvm.getString("BNCServerRequestQueue", null);
    if (localObject != null) {
      try
      {
        localObject = new JSONArray((String)localObject);
        int i = 0;
        while (i < Math.min(((JSONArray)localObject).length(), 25))
        {
          r localr = r.a(((JSONArray)localObject).getJSONObject(i), paramContext);
          if ((localr != null) && (!(localr instanceof ab)) && (!(localr instanceof y))) {
            localList.add(localr);
          }
          i += 1;
        }
        return localList;
      }
      catch (JSONException paramContext) {}
    }
  }
  
  final void Hm()
  {
    new Thread(new Runnable()
    {
      public final void run()
      {
        synchronized (z.a(z.this))
        {
          JSONArray localJSONArray = new JSONArray();
          Iterator localIterator = z.a(z.this).iterator();
          while (localIterator.hasNext())
          {
            JSONObject localJSONObject = ((r)localIterator.next()).Hg();
            if (localJSONObject != null) {
              localJSONArray.put(localJSONObject);
            }
          }
        }
        try
        {
          z.b(z.this).putString("BNCServerRequestQueue", ((JSONArray)localObject1).toString()).commit();
          return;
        }
        catch (ConcurrentModificationException localConcurrentModificationException3)
        {
          for (;;)
          {
            localConcurrentModificationException3 = localConcurrentModificationException3;
            q.V("Persisting Queue: ", "Failed to persit queue " + localConcurrentModificationException3.getMessage());
            try
            {
              z.b(z.this).putString("BNCServerRequestQueue", ((JSONArray)localObject1).toString()).commit();
            }
            catch (ConcurrentModificationException localConcurrentModificationException1) {}
          }
        }
        finally {}
        try
        {
          z.b(z.this).putString("BNCServerRequestQueue", localConcurrentModificationException1.toString()).commit();
          throw ((Throwable)localObject2);
        }
        catch (ConcurrentModificationException localConcurrentModificationException2)
        {
          for (;;) {}
        }
      }
    }).start();
  }
  
  /* Error */
  public final r Hn()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	io/branch/referral/z:cBx	Ljava/util/List;
    //   4: iconst_0
    //   5: invokeinterface 134 2 0
    //   10: checkcast 97	io/branch/referral/r
    //   13: astore_1
    //   14: aload_0
    //   15: invokevirtual 136	io/branch/referral/z:Hm	()V
    //   18: aload_1
    //   19: areturn
    //   20: astore_1
    //   21: aconst_null
    //   22: areturn
    //   23: astore_2
    //   24: aload_1
    //   25: areturn
    //   26: astore_1
    //   27: aconst_null
    //   28: areturn
    //   29: astore_2
    //   30: aload_1
    //   31: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	z
    //   13	6	1	localr	r
    //   20	5	1	localIndexOutOfBoundsException1	IndexOutOfBoundsException
    //   26	5	1	localNoSuchElementException1	NoSuchElementException
    //   23	1	2	localIndexOutOfBoundsException2	IndexOutOfBoundsException
    //   29	1	2	localNoSuchElementException2	NoSuchElementException
    // Exception table:
    //   from	to	target	type
    //   0	14	20	java/lang/IndexOutOfBoundsException
    //   14	18	23	java/lang/IndexOutOfBoundsException
    //   0	14	26	java/util/NoSuchElementException
    //   14	18	29	java/util/NoSuchElementException
  }
  
  public final r Ho()
  {
    try
    {
      r localr = (r)this.cBx.get(0);
      return localr;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      return null;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
      for (;;) {}
    }
  }
  
  public final boolean Hp()
  {
    synchronized (this.cBx)
    {
      Iterator localIterator = this.cBx.iterator();
      while (localIterator.hasNext())
      {
        r localr = (r)localIterator.next();
        if ((localr != null) && (localr.Hd().equals(n.c.cAh.key))) {
          return true;
        }
      }
      return false;
    }
  }
  
  public final boolean Hq()
  {
    synchronized (this.cBx)
    {
      Iterator localIterator = this.cBx.iterator();
      while (localIterator.hasNext())
      {
        r localr = (r)localIterator.next();
        if ((localr != null) && (((localr instanceof ac)) || ((localr instanceof ad)))) {
          return true;
        }
      }
      return false;
    }
  }
  
  public final void a(d.e parame)
  {
    for (;;)
    {
      Object localObject;
      synchronized (this.cBx)
      {
        Iterator localIterator = this.cBx.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (r)localIterator.next();
        if (localObject == null) {
          continue;
        }
        if ((localObject instanceof ac))
        {
          localObject = (ac)localObject;
          if (parame == null) {
            continue;
          }
          ((ac)localObject).cBr = parame;
        }
      }
      if ((localObject instanceof ad))
      {
        localObject = (ad)localObject;
        if (parame != null) {
          ((ad)localObject).cBr = parame;
        }
      }
    }
  }
  
  public final void a(r paramr, int paramInt)
  {
    int i = paramInt;
    try
    {
      if (this.cBx.size() < paramInt) {
        i = this.cBx.size();
      }
      this.cBx.add(i, paramr);
      Hm();
      return;
    }
    catch (IndexOutOfBoundsException paramr) {}
  }
  
  public final void b(r.a parama)
  {
    synchronized (this.cBx)
    {
      Iterator localIterator = this.cBx.iterator();
      while (localIterator.hasNext())
      {
        r localr = (r)localIterator.next();
        if (localr != null) {
          localr.cBb.remove(parama);
        }
      }
    }
  }
  
  public final boolean b(r paramr)
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = this.cBx.remove(paramr);
      bool1 = bool2;
      Hm();
      return bool2;
    }
    catch (UnsupportedOperationException paramr) {}
    return bool1;
  }
  
  public final void clear()
  {
    try
    {
      this.cBx.clear();
      Hm();
      return;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException) {}
  }
  
  public final r fc(int paramInt)
  {
    try
    {
      r localr = (r)this.cBx.get(paramInt);
      return localr;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      return null;
    }
    catch (NoSuchElementException localNoSuchElementException)
    {
      for (;;) {}
    }
  }
  
  public final int getSize()
  {
    return this.cBx.size();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */