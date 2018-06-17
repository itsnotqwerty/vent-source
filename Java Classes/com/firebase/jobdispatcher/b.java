package com.firebase.jobdispatcher;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class b
  implements v
{
  private final Context context;
  
  public b(Context paramContext)
  {
    this.context = paramContext;
  }
  
  private static List<String> a(List<String> paramList, String paramString)
  {
    if (paramString == null) {
      return paramList;
    }
    if (paramList == null) {
      return aJ(paramString);
    }
    Collections.addAll(paramList, new String[] { paramString });
    return paramList;
  }
  
  private static List<String> a(boolean paramBoolean, List<String> paramList, String paramString)
  {
    Object localObject = paramList;
    if (paramBoolean) {
      localObject = a(paramList, paramString);
    }
    return (List<String>)localObject;
  }
  
  private static List<String> aJ(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    return localArrayList;
  }
  
  private static List<String> e(List<String> paramList1, List<String> paramList2)
  {
    List<String> localList;
    if (paramList1 == null) {
      localList = paramList2;
    }
    do
    {
      return localList;
      localList = paramList1;
    } while (paramList2 == null);
    paramList1.addAll(paramList2);
    return paramList1;
  }
  
  public final List<String> a(r paramr)
  {
    Object localObject3 = null;
    Object localObject1 = paramr.kO();
    int i;
    boolean bool;
    label90:
    label109:
    label131:
    label151:
    Object localObject4;
    if ((localObject1 != z.ayi) && (!(localObject1 instanceof u.b)) && (!(localObject1 instanceof u.a)))
    {
      localObject1 = aJ("Unknown trigger provided");
      localObject1 = e(null, (List)localObject1);
      localObject2 = paramr.kM();
      i = ((x)localObject2).ayd;
      int j = ((x)localObject2).aye;
      int k = ((x)localObject2).ayf;
      if ((i == 1) || (i == 2)) {
        break label430;
      }
      bool = true;
      localObject2 = a(bool, null, "Unknown retry policy provided");
      if (k >= j) {
        break label436;
      }
      bool = true;
      localObject2 = a(bool, (List)localObject2, "Maximum backoff must be greater than or equal to initial backoff");
      if (300 <= k) {
        break label442;
      }
      bool = true;
      localObject2 = a(bool, (List)localObject2, "Maximum backoff must be greater than 300s (5 minutes)");
      if (j >= 30) {
        break label448;
      }
      bool = true;
      localObject2 = e((List)localObject1, a(bool, (List)localObject2, "Initial backoff must be at least 30s"));
      localObject1 = localObject2;
      if (paramr.kQ())
      {
        localObject1 = localObject2;
        if (paramr.kO() == z.ayi) {
          localObject1 = a((List)localObject2, "ImmediateTriggers can't be used with recurring jobs");
        }
      }
      localObject2 = paramr.getExtras();
      if (localObject2 == null) {
        break label454;
      }
      localObject4 = Parcel.obtain();
      ((Bundle)localObject2).writeToParcel((Parcel)localObject4, 0);
      i = ((Parcel)localObject4).dataSize();
      ((Parcel)localObject4).recycle();
      if (i <= 10240) {
        break label454;
      }
    }
    String str;
    label430:
    label436:
    label442:
    label448:
    label454:
    for (Object localObject2 = aJ(String.format(Locale.US, "Extras too large: %d bytes is > the max (%d bytes)", new Object[] { Integer.valueOf(i), Integer.valueOf(10240) }));; localObject2 = null)
    {
      localObject4 = e((List)localObject1, (List)localObject2);
      if (paramr.kP() <= 1) {
        break label809;
      }
      Bundle localBundle = paramr.getExtras();
      if (localBundle == null) {
        break label509;
      }
      Iterator localIterator = localBundle.keySet().iterator();
      for (localObject1 = null;; localObject1 = a((List)localObject1, (String)localObject2))
      {
        localObject2 = localObject1;
        if (!localIterator.hasNext()) {
          break label512;
        }
        str = (String)localIterator.next();
        localObject2 = localBundle.get(str);
        if ((localObject2 != null) && (!(localObject2 instanceof Integer)) && (!(localObject2 instanceof Long)) && (!(localObject2 instanceof Double)) && (!(localObject2 instanceof String)) && (!(localObject2 instanceof Boolean))) {
          break;
        }
        localObject2 = null;
      }
      localObject1 = null;
      break;
      bool = false;
      break label90;
      bool = false;
      break label109;
      bool = false;
      break label131;
      bool = false;
      break label151;
    }
    Locale localLocale = Locale.US;
    if (localObject2 == null) {}
    for (localObject2 = null;; localObject2 = localObject2.getClass())
    {
      localObject2 = String.format(localLocale, "Received value of type '%s' for key '%s', but only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean", new Object[] { localObject2, str });
      break;
    }
    label509:
    localObject2 = null;
    label512:
    label607:
    label809:
    for (localObject2 = e((List)localObject4, (List)localObject2);; localObject2 = localObject4)
    {
      localObject1 = paramr.getTag();
      if (localObject1 == null)
      {
        localObject1 = aJ("Tag can't be null");
        localObject1 = e((List)localObject2, (List)localObject1);
        paramr = paramr.kR();
        if ((paramr != null) && (!paramr.isEmpty())) {
          break label607;
        }
        paramr = aJ("Service can't be empty");
      }
      for (;;)
      {
        return e((List)localObject1, paramr);
        if (((String)localObject1).length() > 100)
        {
          localObject1 = aJ("Tag must be shorter than 100");
          break;
        }
        localObject1 = null;
        break;
        if (this.context == null)
        {
          paramr = aJ("Context is null, can't query PackageManager");
        }
        else
        {
          localObject2 = this.context.getPackageManager();
          if (localObject2 == null)
          {
            paramr = aJ("PackageManager is null, can't validate service");
          }
          else
          {
            localObject4 = new Intent("com.firebase.jobdispatcher.ACTION_EXECUTE");
            ((Intent)localObject4).setClassName(this.context, paramr);
            localObject2 = ((PackageManager)localObject2).queryIntentServices((Intent)localObject4, 0);
            if ((localObject2 == null) || (((List)localObject2).isEmpty()))
            {
              Log.e("FJD.GooglePlayReceiver", "Couldn't find a registered service with the name " + paramr + ". Is it declared in the manifest with the right intent-filter? If not, the job won't be started.");
              paramr = (r)localObject3;
            }
            else
            {
              localObject2 = ((List)localObject2).iterator();
              for (;;)
              {
                if (((Iterator)localObject2).hasNext())
                {
                  localObject4 = (ResolveInfo)((Iterator)localObject2).next();
                  if ((((ResolveInfo)localObject4).serviceInfo != null) && (((ResolveInfo)localObject4).serviceInfo.enabled))
                  {
                    paramr = (r)localObject3;
                    break;
                  }
                }
              }
              paramr = aJ(paramr + " is disabled.");
            }
          }
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */