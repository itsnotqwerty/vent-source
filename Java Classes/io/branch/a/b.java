package io.branch.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.AbsListView;
import android.widget.TextView;
import io.branch.referral.q;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  private static b cuO;
  public Handler cuP = new Handler();
  public WeakReference<Activity> cuQ;
  String cuR;
  public JSONObject cuS;
  int cuT;
  int cuU = 15;
  private final a cuV = new a();
  c cuW;
  public final Map<String, WeakReference<ViewTreeObserver>> cuX = new HashMap();
  public ArrayList<String> cuY = new ArrayList();
  public Runnable cuZ = new Runnable()
  {
    public final void run()
    {
      for (boolean bool1 = false;; bool1 = false) {
        for (;;)
        {
          Object localObject2;
          Object localObject4;
          try
          {
            localObject1 = b.this;
            ((b)localObject1).cuT += 1;
            if ((!b.this.cuW.cvk) || (b.this.cuQ == null) || (b.this.cuQ.get() == null)) {
              return;
            }
            localActivity = (Activity)b.this.cuQ.get();
            b.this.cuS = new JSONObject();
            b.this.cuS.put("ts", System.currentTimeMillis());
            if (!TextUtils.isEmpty(b.this.cuR)) {
              b.this.cuS.put("rl", b.this.cuR);
            }
            localObject2 = "/" + localActivity.getClass().getSimpleName();
            b.this.cuS.put("v", localObject2);
            localObject3 = (ViewGroup)localActivity.findViewById(16908290);
            if (localObject3 == null) {
              return;
            }
            localObject4 = b.this.cuW.x(localActivity);
            localObject1 = null;
            if (localObject4 == null) {
              break;
            }
            boolean bool2 = ((c.a)localObject4).cvp;
            localObject1 = b.this.cuS;
            if (!bool2) {
              bool1 = true;
            }
            ((JSONObject)localObject1).put("h", bool1);
            localObject1 = ((c.a)localObject4).Gs();
            bool1 = bool2;
            if ((localObject1 != null) && (((JSONArray)localObject1).length() > 0))
            {
              localObject3 = new JSONArray();
              b.this.cuS.put("ck", localObject3);
              localObject4 = new JSONArray();
              b.this.cuS.put("cd", localObject4);
              b.a(b.this, (JSONArray)localObject1, (JSONArray)localObject4, (JSONArray)localObject3, localActivity, bool1);
              b.this.cuY.add(localObject2);
              q.bT(localActivity);
              localObject3 = b.this.cuS;
              localObject4 = q.getString("bnc_session_id");
              if (!((String)localObject4).equals("bnc_no_value")) {
                if (q.cAW == null) {
                  q.cAW = q.GY();
                }
              }
            }
          }
          catch (Exception localException)
          {
            Object localObject1;
            Activity localActivity;
            Object localObject3;
            int i;
            return;
          }
          try
          {
            if (!q.cAW.has((String)localObject4)) {
              break label583;
            }
            localObject2 = q.cAW.getJSONArray((String)localObject4);
            ((JSONArray)localObject2).put(localObject3);
            q.setString("bnc_branch_analytical_data", q.cAW.toString());
          }
          catch (JSONException localJSONException)
          {
            continue;
          }
          i = b.this.cuW.x(localActivity).cvq;
          b.this.cuU = b.this.cuW.x(localActivity).cvr;
          if ((b.this.cuT >= b.this.cuU) || (i < 500) || (localObject1 == null) || (((JSONArray)localObject1).length() <= 0)) {
            return;
          }
          b.this.cuP.postDelayed(b.this.cuZ, i);
          return;
          if (!b.this.cuY.contains(localObject2))
          {
            localObject4 = new JSONArray();
            b.this.cuS.put("ck", localObject4);
            b.a(b.this, (ViewGroup)localObject3, (JSONArray)localObject4, localActivity.getResources());
            continue;
            label583:
            localObject2 = new JSONArray();
            q.cAW.put((String)localObject4, localObject2);
          }
        }
      }
    }
  };
  public ViewTreeObserver.OnScrollChangedListener cva = new ViewTreeObserver.OnScrollChangedListener()
  {
    public final void onScrollChanged()
    {
      b.this.cuP.removeCallbacks(b.this.cvb);
      if (b.this.cuU > b.this.cuT) {
        b.this.cuP.postDelayed(b.this.cvb, 1500L);
      }
    }
  };
  Runnable cvb = new Runnable()
  {
    public final void run()
    {
      b.this.cuZ.run();
    }
  };
  
  public static b Gq()
  {
    if (cuO == null) {
      cuO = new b();
    }
    return cuO;
  }
  
  private static String a(View paramView, Resources paramResources)
  {
    int i = paramView.getId();
    try
    {
      paramView = paramResources.getResourceEntryName(paramView.getId());
      return paramView;
    }
    catch (Exception paramView) {}
    return String.valueOf(i);
  }
  
  private void a(ViewGroup paramViewGroup, JSONArray paramJSONArray, Resources paramResources)
  {
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      Object localObject = paramViewGroup.getChildAt(i);
      ViewGroup localViewGroup;
      int j;
      View localView;
      JSONArray localJSONArray;
      if (((View)localObject).getVisibility() == 0)
      {
        if ((!(localObject instanceof AbsListView)) && (!localObject.getClass().getSimpleName().equals("RecyclerView"))) {
          break label228;
        }
        localViewGroup = (ViewGroup)localObject;
        localObject = new JSONObject();
        if ((localViewGroup != null) && (localViewGroup.getChildCount() >= 0))
        {
          if (localViewGroup.getChildCount() <= 1) {
            break label189;
          }
          j = 1;
          localView = localViewGroup.getChildAt(j);
          if (localView != null) {
            localJSONArray = new JSONArray();
          }
        }
      }
      for (;;)
      {
        try
        {
          ((JSONObject)localObject).put(a(localViewGroup, paramResources), localJSONArray);
          if ((localView instanceof ViewGroup))
          {
            a((ViewGroup)localView, localJSONArray, paramResources);
            if (((JSONObject)localObject).length() > 0) {
              paramJSONArray.put("$" + localObject);
            }
            i += 1;
            break;
            label189:
            j = 0;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          continue;
          if (!(localView instanceof TextView)) {
            continue;
          }
          localJSONArray.put(a(localView, paramResources));
          continue;
        }
        label228:
        if ((localObject instanceof ViewGroup)) {
          a((ViewGroup)localObject, paramJSONArray, paramResources);
        } else if ((localObject instanceof TextView)) {
          paramJSONArray.put(a((View)localObject, paramResources));
        }
      }
    }
  }
  
  private String h(View paramView, boolean paramBoolean)
  {
    String str = null;
    Object localObject = (TextView)paramView;
    paramView = str;
    if (((TextView)localObject).getText() != null)
    {
      str = ((TextView)localObject).getText().toString().substring(0, Math.min(((TextView)localObject).getText().toString().length(), this.cuW.cvh));
      if (paramBoolean) {
        return str;
      }
      localObject = this.cuV;
      paramView = "";
      if (((a)localObject).cvd != null)
      {
        ((a)localObject).cvd.reset();
        ((a)localObject).cvd.update(str.getBytes());
        paramView = new String(((a)localObject).cvd.digest());
      }
    }
    return paramView;
    return str;
  }
  
  private void w(Activity paramActivity)
  {
    this.cuT = 0;
    if (this.cuY.size() < this.cuW.cvi)
    {
      this.cuP.removeCallbacks(this.cuZ);
      this.cuQ = new WeakReference(paramActivity);
      this.cuP.postDelayed(this.cuZ, 1000L);
    }
  }
  
  public final JSONObject bO(Context paramContext)
  {
    q.bT(paramContext);
    Object localObject1 = q.GY();
    JSONObject localJSONObject;
    if ((((JSONObject)localObject1).length() > 0) && (((JSONObject)localObject1).toString().length() < this.cuW.cvj)) {
      localJSONObject = new JSONObject();
    }
    for (;;)
    {
      try
      {
        localJSONObject.put("mv", c.bP(paramContext).Gr()).put("e", localObject1);
        localObject1 = localJSONObject;
        if (paramContext != null)
        {
          localJSONObject.put("p", paramContext.getPackageName());
          localJSONObject.put("p", paramContext.getPackageName());
          localObject1 = localJSONObject;
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        localObject2 = localJSONObject;
        continue;
      }
      q.bT(paramContext);
      q.cAW = null;
      q.setString("bnc_branch_analytical_data", "");
      return (JSONObject)localObject1;
      Object localObject2 = null;
    }
  }
  
  public final void d(Activity paramActivity, String paramString)
  {
    this.cuW = c.bP(paramActivity);
    this.cuR = paramString;
    paramString = this.cuW.x(paramActivity);
    if (paramString != null)
    {
      paramString = paramString.Gs();
      if ((paramString != null) && (paramString.length() == 0))
      {
        i = 1;
        if (i == 0) {
          w(paramActivity);
        }
      }
    }
    while (TextUtils.isEmpty(this.cuR)) {
      for (;;)
      {
        return;
        int i = 0;
      }
    }
    w(paramActivity);
  }
  
  private final class a
  {
    MessageDigest cvd;
    
    a()
    {
      try
      {
        this.cvd = MessageDigest.getInstance("MD5");
        return;
      }
      catch (NoSuchAlgorithmException this$1) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */