package io.branch.referral;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

public class InstallListener
  extends BroadcastReceiver
{
  private static String cAM = "bnc_no_value";
  private static a cAN = null;
  private static boolean cAO;
  private static boolean cAP;
  
  public static String GP()
  {
    return cAM;
  }
  
  private static void GQ()
  {
    if (cAN != null)
    {
      cAN.Gw();
      cAN = null;
      cAP = false;
    }
  }
  
  public static void T(long paramLong)
  {
    if (cAP)
    {
      GQ();
      return;
    }
    cAO = true;
    new Handler().postDelayed(new Runnable()
    {
      public final void run() {}
    }, paramLong);
  }
  
  public static void a(a parama)
  {
    cAN = parama;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    paramIntent = paramIntent.getStringExtra("referrer");
    if (paramIntent != null) {}
    for (;;)
    {
      try
      {
        paramIntent = URLDecoder.decode(paramIntent, "UTF-8");
        HashMap localHashMap = new HashMap();
        String[] arrayOfString1 = paramIntent.split("&");
        int j = arrayOfString1.length;
        if (i < j)
        {
          String[] arrayOfString2 = arrayOfString1[i].split("=");
          if (arrayOfString2.length > 1) {
            localHashMap.put(URLDecoder.decode(arrayOfString2[0], "UTF-8"), URLDecoder.decode(arrayOfString2[1], "UTF-8"));
          }
        }
        else
        {
          q.bT(paramContext);
          if (localHashMap.containsKey(n.a.cxV.key))
          {
            paramContext = (String)localHashMap.get(n.a.cxV.key);
            cAM = paramContext;
            q.setString("bnc_link_click_identifier", paramContext);
          }
          if ((localHashMap.containsKey(n.a.cyy.key)) && (localHashMap.containsKey(n.a.cyx.key)))
          {
            q.br(Boolean.parseBoolean((String)localHashMap.get(n.a.cyy.key)));
            q.setString("bnc_app_link", (String)localHashMap.get(n.a.cyx.key));
          }
          if (localHashMap.containsKey(n.a.cxW.key))
          {
            q.setString("bnc_google_search_install_identifier", (String)localHashMap.get(n.a.cxW.key));
            q.setString("bnc_google_play_install_referrer_extras", paramIntent);
          }
          cAP = true;
          if (cAO) {
            GQ();
          }
          return;
        }
      }
      catch (UnsupportedEncodingException paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      catch (IllegalArgumentException paramContext)
      {
        paramContext.printStackTrace();
        Log.w("BranchSDK", "Illegal characters in url encoded string");
        return;
      }
      i += 1;
    }
  }
  
  static abstract interface a
  {
    public abstract void Gw();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/InstallListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */