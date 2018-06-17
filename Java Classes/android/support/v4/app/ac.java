package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.os.Bundle;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class ac
{
  private static final Object AA = new Object();
  private static final Object Ax = new Object();
  private static Field Ay;
  private static boolean Az;
  
  public static Bundle a(Notification.Builder paramBuilder, aa.a parama)
  {
    paramBuilder.addAction(parama.icon, parama.title, parama.actionIntent);
    paramBuilder = new Bundle(parama.zp);
    if (parama.zq != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", a(parama.zq));
    }
    if (parama.zr != null) {
      paramBuilder.putParcelableArray("android.support.dataRemoteInputs", a(parama.zr));
    }
    paramBuilder.putBoolean("android.support.allowGeneratedReplies", parama.zs);
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (Ax)
    {
      if (Az) {
        return null;
      }
    }
  }
  
  private static Bundle[] a(ae[] paramArrayOfae)
  {
    if (paramArrayOfae == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfae.length];
    int i = 0;
    while (i < paramArrayOfae.length)
    {
      Object localObject1 = paramArrayOfae[i];
      Bundle localBundle = new Bundle();
      localBundle.putString("resultKey", ((ae)localObject1).AD);
      localBundle.putCharSequence("label", ((ae)localObject1).AE);
      localBundle.putCharSequenceArray("choices", ((ae)localObject1).AF);
      localBundle.putBoolean("allowFreeFormInput", ((ae)localObject1).AG);
      localBundle.putBundle("extras", ((ae)localObject1).zp);
      Object localObject2 = ((ae)localObject1).AH;
      if ((localObject2 != null) && (!((Set)localObject2).isEmpty()))
      {
        localObject1 = new ArrayList(((Set)localObject2).size());
        localObject2 = ((Set)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((ArrayList)localObject1).add((String)((Iterator)localObject2).next());
        }
        localBundle.putStringArrayList("allowedDataTypes", (ArrayList)localObject1);
      }
      arrayOfBundle[i] = localBundle;
      i += 1;
    }
    return arrayOfBundle;
  }
  
  static Bundle c(aa.a parama)
  {
    Bundle localBundle2 = new Bundle();
    localBundle2.putInt("icon", parama.icon);
    localBundle2.putCharSequence("title", parama.title);
    localBundle2.putParcelable("actionIntent", parama.actionIntent);
    if (parama.zp != null) {}
    for (Bundle localBundle1 = new Bundle(parama.zp);; localBundle1 = new Bundle())
    {
      localBundle1.putBoolean("android.support.allowGeneratedReplies", parama.zs);
      localBundle2.putBundle("extras", localBundle1);
      localBundle2.putParcelableArray("remoteInputs", a(parama.zq));
      return localBundle2;
    }
  }
  
  public static SparseArray<Bundle> h(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */