package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;
import android.util.SparseArray;

@Deprecated
public abstract class e
  extends BroadcastReceiver
{
  private static final SparseArray<PowerManager.WakeLock> Bq = new SparseArray();
  private static int Br = 1;
  
  public static ComponentName a(Context paramContext, Intent paramIntent)
  {
    synchronized (Bq)
    {
      int i = Br;
      int j = Br + 1;
      Br = j;
      if (j <= 0) {
        Br = 1;
      }
      paramIntent.putExtra("android.support.content.wakelockid", i);
      paramIntent = paramContext.startService(paramIntent);
      if (paramIntent == null) {
        return null;
      }
      paramContext = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "wake:" + paramIntent.flattenToShortString());
      paramContext.setReferenceCounted(false);
      paramContext.acquire(60000L);
      Bq.put(i, paramContext);
      return paramIntent;
    }
  }
  
  public static boolean b(Intent arg0)
  {
    int i = ???.getIntExtra("android.support.content.wakelockid", 0);
    if (i == 0) {
      return false;
    }
    synchronized (Bq)
    {
      PowerManager.WakeLock localWakeLock = (PowerManager.WakeLock)Bq.get(i);
      if (localWakeLock != null)
      {
        localWakeLock.release();
        Bq.remove(i);
        return true;
      }
      Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + i);
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/content/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */