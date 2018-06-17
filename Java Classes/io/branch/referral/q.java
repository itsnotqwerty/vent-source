package io.branch.referral;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class q
{
  private static boolean cAQ = false;
  private static boolean cAR = false;
  private static String cAS = null;
  public static JSONObject cAW;
  private static q cvV;
  private SharedPreferences cAT;
  private SharedPreferences.Editor cAU;
  JSONObject cAV;
  private Context cvX;
  
  public q() {}
  
  private q(Context paramContext)
  {
    this.cAT = paramContext.getSharedPreferences("branch_referral_shared_pref", 0);
    this.cAU = this.cAT.edit();
    this.cvX = paramContext;
    this.cAV = new JSONObject();
  }
  
  public static String GS()
  {
    return "https://api.branch.io/";
  }
  
  public static int GT()
  {
    return l("bnc_retry_interval", 1000);
  }
  
  public static String GU()
  {
    if (cAS == null) {
      cAS = getString("bnc_branch_key");
    }
    return cAS;
  }
  
  public static int GV()
  {
    return l("bnc_is_referrable", 0);
  }
  
  static ArrayList<String> GW()
  {
    String str = getString("bnc_buckets");
    if (str.equals("bnc_no_value")) {
      return new ArrayList();
    }
    return eM(str);
  }
  
  static ArrayList<String> GX()
  {
    String str = getString("bnc_actions");
    if (str.equals("bnc_no_value")) {
      return new ArrayList();
    }
    return eM(str);
  }
  
  public static JSONObject GY()
  {
    if (cAW != null) {
      return cAW;
    }
    Object localObject = getString("bnc_branch_analytical_data");
    JSONObject localJSONObject = new JSONObject();
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!((String)localObject).equals("bnc_no_value"))) {
      try
      {
        localObject = new JSONObject((String)localObject);
        return (JSONObject)localObject;
      }
      catch (JSONException localJSONException) {}
    }
    return localJSONObject;
  }
  
  public static void GZ()
  {
    cAQ = true;
  }
  
  public static boolean Ha()
  {
    return cAQ;
  }
  
  public static void V(String paramString1, String paramString2)
  {
    if (cvV != null) {
      if ((cAQ) || (cAR)) {
        Log.i(paramString1, paramString2);
      }
    }
    while ((!cAQ) && (!cAR)) {
      return;
    }
    Log.i(paramString1, paramString2);
  }
  
  public static q bT(Context paramContext)
  {
    if (cvV == null) {
      cvV = new q(paramContext);
    }
    return cvV;
  }
  
  public static void br(boolean paramBoolean)
  {
    c("bnc_is_full_app_conversion", Boolean.valueOf(paramBoolean));
  }
  
  public static void bs(boolean paramBoolean)
  {
    cAR = paramBoolean;
  }
  
  public static void c(String paramString, Boolean paramBoolean)
  {
    cvV.cAU.putBoolean(paramString, paramBoolean.booleanValue());
    cvV.cAU.apply();
  }
  
  static void c(ArrayList<String> paramArrayList)
  {
    if (paramArrayList.size() == 0)
    {
      setString("bnc_buckets", "bnc_no_value");
      return;
    }
    setString("bnc_buckets", e(paramArrayList));
  }
  
  static void d(ArrayList<String> paramArrayList)
  {
    if (paramArrayList.size() == 0)
    {
      setString("bnc_actions", "bnc_no_value");
      return;
    }
    setString("bnc_actions", e(paramArrayList));
  }
  
  private static String e(ArrayList<String> paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    String str;
    for (paramArrayList = ""; localIterator.hasNext(); paramArrayList = paramArrayList + str + ",") {
      str = (String)localIterator.next();
    }
    return paramArrayList.substring(0, paramArrayList.length() - 1);
  }
  
  public static int eL(String paramString)
  {
    return l("bnc_credit_base_" + paramString, 0);
  }
  
  private static ArrayList<String> eM(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Collections.addAll(localArrayList, paramString.split(","));
    return localArrayList;
  }
  
  public static boolean eN(String paramString)
  {
    return cvV.cAT.getBoolean(paramString, false);
  }
  
  public static int eO(String paramString)
  {
    return l("bnc_branch_view_use_" + paramString, 0);
  }
  
  public static long getLong(String paramString)
  {
    return cvV.cAT.getLong(paramString, 0L);
  }
  
  public static String getString(String paramString)
  {
    return cvV.cAT.getString(paramString, "bnc_no_value");
  }
  
  public static int getTimeout()
  {
    return l("bnc_timeout", 5500);
  }
  
  public static void k(String paramString, int paramInt)
  {
    ArrayList localArrayList = GW();
    if (!localArrayList.contains(paramString))
    {
      localArrayList.add(paramString);
      c(localArrayList);
    }
    setInteger("bnc_credit_base_" + paramString, paramInt);
  }
  
  public static int l(String paramString, int paramInt)
  {
    return cvV.cAT.getInt(paramString, paramInt);
  }
  
  public static void setInteger(String paramString, int paramInt)
  {
    cvV.cAU.putInt(paramString, paramInt);
    cvV.cAU.apply();
  }
  
  public static void setLong(String paramString, long paramLong)
  {
    cvV.cAU.putLong(paramString, paramLong);
    cvV.cAU.apply();
  }
  
  public static void setString(String paramString1, String paramString2)
  {
    cvV.cAU.putString(paramString1, paramString2);
    cvV.cAU.apply();
  }
  
  public final String bq(boolean paramBoolean)
  {
    String str2 = null;
    Object localObject1 = null;
    String str1;
    if (paramBoolean) {
      str1 = "io.branch.sdk.BranchKey";
    }
    for (;;)
    {
      if (!paramBoolean) {
        cAQ = true;
      }
      Object localObject3 = str2;
      try
      {
        ApplicationInfo localApplicationInfo = this.cvX.getPackageManager().getApplicationInfo(this.cvX.getPackageName(), 128);
        localObject3 = str2;
        if (localApplicationInfo.metaData != null)
        {
          localObject3 = str2;
          str2 = localApplicationInfo.metaData.getString(str1);
          localObject1 = str2;
          if (str2 == null)
          {
            localObject1 = str2;
            if (!paramBoolean)
            {
              localObject3 = str2;
              localObject1 = localApplicationInfo.metaData.getString("io.branch.sdk.BranchKey");
            }
          }
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          Object localObject4;
          Object localObject2 = localObject4;
        }
      }
      localObject3 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {}
      try
      {
        localObject3 = this.cvX.getResources();
        localObject3 = ((Resources)localObject3).getString(((Resources)localObject3).getIdentifier(str1, "string", this.cvX.getPackageName()));
        localObject1 = localObject3;
        if (localObject3 == null) {
          localObject1 = "bnc_no_value";
        }
        return (String)localObject1;
        str1 = "io.branch.sdk.BranchKey.test";
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localObject4 = localObject1;
        }
      }
    }
  }
  
  public final boolean eK(String paramString)
  {
    cAS = paramString;
    String str1 = getString("bnc_branch_key");
    if ((paramString == null) || (str1 == null) || (!str1.equals(paramString)))
    {
      str1 = getString("bnc_link_click_id");
      String str2 = getString("bnc_link_click_identifier");
      String str3 = getString("bnc_app_link");
      String str4 = getString("bnc_push_identifier");
      this.cAU.clear();
      setString("bnc_link_click_id", str1);
      setString("bnc_link_click_identifier", str2);
      setString("bnc_app_link", str3);
      setString("bnc_push_identifier", str4);
      cvV.cAU.apply();
      setString("bnc_branch_key", paramString);
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */