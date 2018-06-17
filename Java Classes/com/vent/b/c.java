package com.vent.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.a.a.a;
import com.android.a.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public final class c
{
  boolean clA = false;
  boolean clB = false;
  boolean clC = false;
  boolean clD = false;
  boolean clE = false;
  boolean clF = false;
  final Object clG = new Object();
  private String clH = "";
  a clI;
  ServiceConnection clJ;
  int clK;
  String clL;
  private final String clM;
  d clN;
  Context mContext;
  
  public c(Context paramContext, String paramString)
  {
    this.mContext = paramContext.getApplicationContext();
    this.clM = paramString;
  }
  
  private int a(e parame, String paramString)
    throws JSONException, RemoteException
  {
    int k = 0;
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      localObject1 = this.clI.a(3, this.mContext.getPackageName(), paramString, (String)localObject1);
      int j = v((Bundle)localObject1);
      if (j != 0) {}
      do
      {
        return j;
        if ((!((Bundle)localObject1).containsKey("INAPP_PURCHASE_ITEM_LIST")) || (!((Bundle)localObject1).containsKey("INAPP_PURCHASE_DATA_LIST")) || (!((Bundle)localObject1).containsKey("INAPP_DATA_SIGNATURE_LIST"))) {
          return 64534;
        }
        ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        j = 0;
        if (j < localArrayList1.size())
        {
          Object localObject2 = (String)localArrayList1.get(j);
          String str = (String)localArrayList2.get(j);
          if (g.k(this.clM, (String)localObject2, str))
          {
            localObject2 = new f(paramString, (String)localObject2, str);
            TextUtils.isEmpty(((f)localObject2).cmm);
            parame.cmf.put(((f)localObject2).cmi, localObject2);
          }
          for (;;)
          {
            j += 1;
            break;
            i = 1;
          }
        }
        localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          break;
        }
        j = k;
      } while (i == 0);
      return 64533;
    }
  }
  
  private int a(String paramString, e parame, List<String> paramList)
    throws RemoteException, JSONException
  {
    Object localObject1 = new ArrayList(parame.ep(paramString));
    Object localObject2;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localObject2 = (String)paramList.next();
        if (!((ArrayList)localObject1).contains(localObject2)) {
          ((ArrayList)localObject1).add(localObject2);
        }
      }
    }
    if (((ArrayList)localObject1).size() == 0)
    {
      i = 0;
      return i;
    }
    paramList = new ArrayList();
    int j = ((ArrayList)localObject1).size() / 20;
    int k = ((ArrayList)localObject1).size() % 20;
    int i = 0;
    while (i < j)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(((ArrayList)localObject1).subList(i * 20, i * 20 + 20));
      paramList.add(localObject2);
      i += 1;
    }
    if (k != 0)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).addAll(((ArrayList)localObject1).subList(j * 20, j * 20 + k));
      paramList.add(localObject2);
    }
    paramList = paramList.iterator();
    for (;;)
    {
      if (!paramList.hasNext()) {
        break label369;
      }
      localObject1 = (ArrayList)paramList.next();
      localObject2 = new Bundle();
      ((Bundle)localObject2).putStringArrayList("ITEM_ID_LIST", (ArrayList)localObject1);
      localObject1 = this.clI.a(3, this.mContext.getPackageName(), paramString, (Bundle)localObject2);
      if (!((Bundle)localObject1).containsKey("DETAILS_LIST"))
      {
        j = v((Bundle)localObject1);
        i = j;
        if (j != 0) {
          break;
        }
        return 64534;
      }
      localObject1 = ((Bundle)localObject1).getStringArrayList("DETAILS_LIST").iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = new h(paramString, (String)((Iterator)localObject1).next());
        parame.cme.put(((h)localObject2).cmi, localObject2);
      }
    }
    label369:
    return 0;
  }
  
  public static String eP(int paramInt)
  {
    String[] arrayOfString1 = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
    String[] arrayOfString2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
    if (paramInt <= 64536)
    {
      int i = 64536 - paramInt;
      if ((i >= 0) && (i < arrayOfString2.length)) {
        return arrayOfString2[i];
      }
      return String.valueOf(paramInt) + ":Unknown IAB Helper Error";
    }
    if ((paramInt < 0) || (paramInt >= arrayOfString1.length)) {
      return String.valueOf(paramInt) + ":Unknown";
    }
    return arrayOfString1[paramInt];
  }
  
  static String eo(String paramString)
  {
    String str = "";
    int j = paramString.length();
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      if (((c >= 'A') && (c <= 'M')) || ((c >= 'a') && (c <= 'm'))) {
        str = str + (char)(c + '\r');
      }
      for (;;)
      {
        i += 1;
        break;
        if (((c >= 'N') && (c <= 'Z')) || ((c >= 'n') && (c <= 'z'))) {
          str = str + (char)(c - '\r');
        } else {
          str = str + c;
        }
      }
    }
    return str;
  }
  
  static int v(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null) {
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    throw new RuntimeException("Unexpected type for bundle response code: " + paramBundle.getClass().getName());
  }
  
  final void Fu()
    throws c.a
  {
    synchronized (this.clG)
    {
      if (this.clF) {
        throw new a("Can't dispose because an async operation (" + this.clH + ") is in progress.");
      }
    }
    this.clA = false;
    if ((this.clJ != null) && (this.mContext != null) && (this.clI != null)) {
      this.mContext.unbindService(this.clJ);
    }
    this.clB = true;
    this.mContext = null;
    this.clJ = null;
    this.clI = null;
    this.clN = null;
  }
  
  public final void Fv()
  {
    if (this.clB) {
      throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
    }
  }
  
  final void Fw()
  {
    synchronized (this.clG)
    {
      this.clH = "";
      this.clF = false;
      boolean bool = this.clC;
      if (!bool) {}
    }
    try
    {
      Fu();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (a locala)
    {
      for (;;) {}
    }
  }
  
  final e a(boolean paramBoolean, List<String> paramList1, List<String> paramList2)
    throws b
  {
    Fv();
    em("queryInventory");
    e locale;
    int i;
    try
    {
      locale = new e();
      i = a(locale, "inapp");
      if (i != 0) {
        throw new b(i, "Error refreshing inventory (querying owned items).");
      }
    }
    catch (RemoteException paramList1)
    {
      throw new b(64535, "Remote exception while refreshing inventory.", paramList1);
      if (paramBoolean)
      {
        i = a("inapp", locale, paramList1);
        if (i != 0) {
          throw new b(i, "Error refreshing inventory (querying prices of items).");
        }
      }
    }
    catch (JSONException paramList1)
    {
      throw new b(64534, "Error parsing JSON response while refreshing inventory.", paramList1);
      if (!this.clD) {
        break label201;
      }
      i = a(locale, "subs");
      if (i != 0) {
        throw new b(i, "Error refreshing inventory (querying owned subscriptions).");
      }
    }
    catch (Exception paramList1)
    {
      throw new b(64536, paramList1.getMessage());
    }
    if (paramBoolean)
    {
      i = a("subs", locale, paramList2);
      if (i != 0) {
        throw new b(i, "Error refreshing inventory (querying prices of subscriptions).");
      }
    }
    label201:
    return locale;
  }
  
  public final void a(final boolean paramBoolean, final List<String> paramList1, final List<String> paramList2, final f paramf)
    throws c.a
  {
    final Handler localHandler = new Handler(Looper.getMainLooper());
    Fv();
    em("queryInventory");
    en("refresh inventory");
    new Thread(new Runnable()
    {
      public final void run()
      {
        final d locald1 = new d(0, "Inventory refresh successful.");
        final Object localObject = null;
        try
        {
          e locale = c.this.a(paramBoolean, paramList1, paramList2);
          localObject = locale;
        }
        catch (b localb)
        {
          for (;;)
          {
            d locald2 = localb.clz;
          }
        }
        c.this.Fw();
        if ((!c.this.clB) && (paramf != null)) {
          localHandler.post(new Runnable()
          {
            public final void run()
            {
              c.2.this.clT.a(locald1, localObject);
            }
          });
        }
      }
    }).start();
  }
  
  public final boolean c(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != this.clK) {
      return false;
    }
    Fv();
    em("handleActivityResult");
    Fw();
    if (paramIntent == null)
    {
      paramIntent = new d(64534, "Null data in IAB result");
      if (this.clN != null) {
        this.clN.a(paramIntent, null);
      }
      return true;
    }
    Object localObject = paramIntent.getExtras().get("RESPONSE_CODE");
    if (localObject == null)
    {
      paramInt1 = 0;
      if (paramIntent != null) {
        break label220;
      }
      localObject = null;
      label89:
      if (paramIntent != null) {
        break label232;
      }
      paramIntent = null;
    }
    for (;;)
    {
      if ((paramInt2 == -1) && (paramInt1 == 0))
      {
        if ((localObject == null) || (paramIntent == null))
        {
          paramIntent = new d(64528, "IAB returned null purchaseData or dataSignature");
          if (this.clN != null) {
            this.clN.a(paramIntent, null);
          }
          return true;
          if ((localObject instanceof Integer))
          {
            paramInt1 = ((Integer)localObject).intValue();
            break;
          }
          if ((localObject instanceof Long))
          {
            paramInt1 = (int)((Long)localObject).longValue();
            break;
          }
          throw new RuntimeException("Unexpected type for intent response code: " + localObject.getClass().getName());
          label220:
          localObject = paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
          break label89;
          label232:
          paramIntent = paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
          continue;
        }
        f localf;
        try
        {
          localf = new f(this.clL, (String)localObject, paramIntent);
          String str = localf.cmi;
          if (!g.k(this.clM, (String)localObject, paramIntent))
          {
            paramIntent = new d(64533, "Signature verification failed for sku " + str);
            if (this.clN != null) {
              this.clN.a(paramIntent, localf);
            }
            return true;
          }
        }
        catch (JSONException paramIntent)
        {
          paramIntent.printStackTrace();
          paramIntent = new d(64534, "Failed to parse purchase data.");
          if (this.clN != null) {
            this.clN.a(paramIntent, null);
          }
          return true;
        }
        if (this.clN != null) {
          this.clN.a(new d(0, "Success"), localf);
        }
      }
    }
    for (;;)
    {
      return true;
      if (paramInt2 == -1)
      {
        if (this.clN != null)
        {
          paramIntent = new d(paramInt1, "Problem purchashing item.");
          this.clN.a(paramIntent, null);
        }
      }
      else if (paramInt2 == 0)
      {
        paramIntent = new d(64531, "User canceled.");
        if (this.clN != null) {
          this.clN.a(paramIntent, null);
        }
      }
      else
      {
        paramIntent = new d(64530, "Unknown purchase response.");
        if (this.clN != null) {
          this.clN.a(paramIntent, null);
        }
      }
    }
  }
  
  public final void em(String paramString)
  {
    if (!this.clA) {
      throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + paramString);
    }
  }
  
  public final void en(String paramString)
    throws c.a
  {
    synchronized (this.clG)
    {
      if (this.clF) {
        throw new a("Can't start async operation (" + paramString + ") because another async operation (" + this.clH + ") is in progress.");
      }
    }
    this.clH = paramString;
    this.clF = true;
  }
  
  public static final class a
    extends Exception
  {
    a(String paramString)
    {
      super();
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(d paramd);
  }
  
  static abstract interface c {}
  
  public static abstract interface d
  {
    public abstract void a(d paramd, f paramf);
  }
  
  public static abstract interface e
  {
    public abstract void b(d paramd);
  }
  
  public static abstract interface f
  {
    public abstract void a(d paramd, e parame);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */