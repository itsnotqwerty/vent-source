package com.vent.d;

import a.a.a.d.c;
import a.a.a.d.b;
import a.a.a.j;
import a.a.a.k.b;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.NotificationManager;
import android.appwidget.AppWidgetManager;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.design.widget.Snackbar;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.n;
import android.support.v4.view.ViewPager;
import android.support.v7.app.d;
import android.support.v7.app.l;
import android.support.v7.widget.Toolbar;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.vent.AppWidget;
import com.vent.CachedImageView;
import com.vent.MyApplication;
import com.vent.a.g;
import com.vent.a.k;
import com.vent.a.m;
import com.vent.a.x;
import com.vent.ae;
import com.vent.ae.a;
import com.vent.ae.c;
import com.vent.bb;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  public static final m cmG = new m("d262e42f-a4cf-3da5-9f4f-7c4ad71d1489");
  public static final CharSequence cmH = "👑";
  private static final ThreadLocal<SimpleDateFormat> cmI = new ThreadLocal() {};
  private static final ThreadLocal<Calendar> cmJ = new ThreadLocal() {};
  private static final ThreadLocal<Calendar> cmK = new ThreadLocal() {};
  private static File cmL;
  static Boolean cmM;
  
  public static void Fz() {}
  
  public static android.support.v4.app.i a(n paramn, int paramInt1, android.support.v4.app.r paramr, int paramInt2)
  {
    if ((paramn == null) || (paramr == null)) {
      return null;
    }
    return paramn.w("android:switcher:" + paramInt1 + ":" + paramInt2);
  }
  
  public static android.support.v4.app.i a(n paramn, ViewPager paramViewPager)
  {
    if ((paramn == null) || (paramViewPager == null)) {
      return null;
    }
    android.support.v4.app.r localr = (android.support.v4.app.r)paramViewPager.getAdapter();
    if (localr == null) {
      return null;
    }
    return a(paramn, paramViewPager.getId(), localr, paramViewPager.getCurrentItem());
  }
  
  public static g a(HashMap<m, g> paramHashMap, m paramm)
  {
    Object localObject = null;
    if (paramHashMap != null)
    {
      paramHashMap = (g)paramHashMap.get(paramm);
      localObject = paramHashMap;
      if (paramHashMap == null) {
        localObject = paramHashMap;
      }
    }
    else if (bb.ciP != null)
    {
      localObject = (g)bb.ciP.get(paramm);
    }
    return (g)localObject;
  }
  
  public static com.vent.a.h a(HashMap<m, com.vent.a.h> paramHashMap, g paramg)
  {
    if (paramg != null) {
      return b(paramHashMap, paramg.cjQ);
    }
    return null;
  }
  
  private static Object a(Object paramObject1, Object paramObject2, int paramInt)
  {
    if (paramInt >= Array.getLength(paramObject1)) {
      return paramObject2;
    }
    Object localObject = Array.get(paramObject1, paramInt);
    if ((localObject != null) && (localObject.getClass().isArray())) {
      Array.set(paramObject2, paramInt, a(localObject, Array.newInstance(localObject.getClass().getComponentType(), Array.getLength(localObject)), 0));
    }
    for (;;)
    {
      paramInt += 1;
      break;
      Array.set(paramObject2, paramInt, localObject);
    }
  }
  
  public static String a(Context paramContext, int paramInt, JSONObject paramJSONObject)
  {
    StringBuilder localStringBuilder = null;
    if ((paramInt <= 0) && (!bE(paramContext)))
    {
      if (paramContext == null) {}
      for (paramJSONObject = "No Net";; paramJSONObject = paramContext.getString(2131689676))
      {
        eu("error " + paramJSONObject);
        return paramJSONObject.trim();
      }
    }
    Object localObject = localStringBuilder;
    if (paramJSONObject != null)
    {
      if (paramJSONObject.isNull("exception")) {
        localObject = localStringBuilder;
      }
    }
    else
    {
      label74:
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        break label292;
      }
      localStringBuilder = new StringBuilder().append("");
      if (paramContext != null) {
        break label243;
      }
      localObject = "exception : " + (String)localObject;
    }
    label116:
    label243:
    label261:
    label282:
    label292:
    for (localObject = (String)localObject;; localObject = "")
    {
      localObject = (String)localObject + h(paramJSONObject, "errors");
      paramJSONObject = ((String)localObject + h(paramJSONObject, "error")).trim();
      localObject = paramJSONObject;
      if (paramJSONObject.length() == 0)
      {
        localObject = paramJSONObject;
        if (paramInt > 0) {
          if (paramContext != null) {
            break label261;
          }
        }
      }
      for (localObject = "Server Error " + paramInt;; localObject = paramContext.getString(2131689746, new Object[] { Integer.valueOf(paramInt) }))
      {
        paramJSONObject = (JSONObject)localObject;
        if (((String)localObject).length() != 0) {
          break;
        }
        if (paramContext != null) {
          break label282;
        }
        paramJSONObject = "Server Error";
        break;
        localObject = paramJSONObject.optString("exception", null);
        break label74;
        localObject = paramContext.getString(2131689745, new Object[] { localObject });
        break label116;
      }
      paramJSONObject = paramContext.getString(2131689744);
      break;
    }
  }
  
  public static <T1, T2> HashMap<T1, T2> a(HashMap<T1, T2> paramHashMap1, HashMap<T1, T2> paramHashMap2)
  {
    if (l(paramHashMap2))
    {
      paramHashMap2 = paramHashMap1;
      if (paramHashMap1 == null) {
        paramHashMap2 = new HashMap();
      }
      return paramHashMap2;
    }
    if (l(paramHashMap1)) {
      return paramHashMap2;
    }
    paramHashMap1.putAll(paramHashMap2);
    return paramHashMap1;
  }
  
  public static void a(Activity paramActivity, final TextInputLayout paramTextInputLayout, EditText paramEditText, final b paramb)
  {
    paramEditText = paramEditText.getText().toString().trim().split("@");
    int i;
    if ((paramEditText.length == 2) && (!TextUtils.isEmpty(paramEditText[0])) && (!TextUtils.isEmpty(paramEditText[1])))
    {
      j = 1;
      i = j;
      if (j != 0)
      {
        if ((paramEditText[0].length() <= 0) || (paramEditText[0].indexOf(' ') != -1)) {
          break label165;
        }
        i = 1;
      }
      label77:
      j = i;
      if (i != 0) {
        if ((paramEditText[1].length() < 3) || (paramEditText[1].indexOf(' ') != -1) || (paramEditText[1].indexOf('.') == -1)) {
          break label171;
        }
      }
    }
    label165:
    label171:
    for (int j = 1;; j = 0)
    {
      if (j != 0) {
        break label177;
      }
      paramTextInputLayout.setError(paramTextInputLayout.getContext().getString(2131689617));
      if (paramb != null)
      {
        paramb.cmT = Boolean.valueOf(false);
        paramb.run();
      }
      return;
      j = 0;
      break;
      i = 0;
      break label77;
    }
    label177:
    b(new AsyncTask()
    {
      android.support.v7.app.c ccW;
      boolean cmN;
      
      private Void Bq()
      {
        bool = false;
        if (this.bXe != null) {
          try
          {
            Object localObject1 = this.bXe.getAssets().open("bad_domains");
            Object localObject3;
            int j;
            int i;
            if (localObject1 != null)
            {
              localObject3 = new byte[((InputStream)localObject1).available()];
              ((InputStream)localObject1).read((byte[])localObject3);
              ((InputStream)localObject1).close();
              String[] arrayOfString = new String((byte[])localObject3).split("\n");
              j = arrayOfString.length;
              i = 0;
              while (i < j)
              {
                localObject3 = arrayOfString[i].trim();
                localObject1 = localObject3;
                if (((String)localObject3).startsWith("\"")) {
                  localObject1 = ((String)localObject3).substring(1);
                }
                localObject3 = localObject1;
                if (((String)localObject1).endsWith(",")) {
                  localObject3 = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
                }
                localObject1 = localObject3;
                if (((String)localObject3).endsWith("\"")) {
                  localObject1 = ((String)localObject3).substring(0, ((String)localObject3).length() - 1);
                }
                if (this.cmO.equalsIgnoreCase(((String)localObject1).trim()))
                {
                  this.cmN = false;
                  return null;
                }
                i += 1;
              }
            }
            try
            {
              localObject2 = InetAddress.getByName(this.cmO);
              if (localObject2 == null) {
                break label332;
              }
              i = 1;
            }
            catch (Exception localException2)
            {
              for (;;)
              {
                try
                {
                  localObject3 = a.a.a.d.a.ctg;
                  Object localObject2 = new j(a.a.a.e.ey(this.cmO), k.b.w(a.a.a.g.i.class));
                  localObject3 = ((a.a.a.d.a)localObject3).cth;
                  localObject2 = new b((j)localObject2, ((a.a.a.a)localObject3).a(((a.a.a.a)localObject3).a((j)localObject2))).cpd;
                  localObject3 = d.c.cpJ;
                  if (localObject2 == localObject3)
                  {
                    j = 1;
                    if (j != 0)
                    {
                      j = 1;
                      if ((i != 0) || (j != 0)) {
                        bool = true;
                      }
                      this.cmN = bool;
                      return null;
                      localException2 = localException2;
                      i = 0;
                    }
                  }
                  else
                  {
                    j = 0;
                    continue;
                  }
                  j = 0;
                }
                catch (Exception localException3) {}
                continue;
                i = 0;
              }
            }
          }
          catch (Exception localException1) {}
        } else if (i != 0) {}
      }
      
      protected final void onPreExecute()
      {
        super.onPreExecute();
        this.ccW = c.v(this.bXe, 2131689697);
      }
    });
  }
  
  public static void a(Dialog paramDialog, int paramInt)
  {
    if (paramDialog != null)
    {
      paramDialog = paramDialog.getWindow();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      WindowManager localWindowManager = paramDialog.getWindowManager();
      if (localWindowManager != null)
      {
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        paramDialog.setLayout((int)TypedValue.applyDimension(1, paramInt, localDisplayMetrics), -2);
      }
    }
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence, int paramInt)
  {
    if ((paramContext instanceof Activity)) {}
    for (paramContext = ((Activity)paramContext).findViewById(2131296682);; paramContext = null)
    {
      b(paramContext, paramCharSequence, paramInt);
      return;
    }
  }
  
  public static void a(AsyncTask<Object, Void, Void> paramAsyncTask, Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[] { paramObject });
      return;
    }
    paramAsyncTask.execute(new Object[] { paramObject });
  }
  
  public static void a(android.support.v4.app.h paramh)
  {
    if (paramh != null) {}
    try
    {
      paramh.o(false);
      return;
    }
    catch (Exception paramh) {}
  }
  
  public static void a(d paramd, Toolbar paramToolbar, CollapsingToolbarLayout paramCollapsingToolbarLayout, com.vent.a.h paramh)
  {
    if (paramd == null) {
      return;
    }
    int i;
    if (paramh != null)
    {
      i = paramh.bB(paramd);
      label16:
      if (paramh == null) {
        break label147;
      }
    }
    label147:
    for (int j = paramh.bC(paramd);; j = -1)
    {
      if (paramToolbar != null)
      {
        paramh = paramToolbar.getNavigationIcon();
        if (paramh != null)
        {
          paramh.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
          paramToolbar.setNavigationIcon(paramh);
        }
        paramh = paramToolbar.getOverflowIcon();
        if (paramh != null)
        {
          paramh.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
          paramToolbar.setOverflowIcon(paramh);
        }
        paramToolbar.setTitleTextColor(j);
        paramToolbar.setSubtitleTextColor(j);
      }
      if (paramCollapsingToolbarLayout != null)
      {
        paramCollapsingToolbarLayout.setCollapsedTitleTextColor(j);
        paramCollapsingToolbarLayout.setExpandedTitleTextColor(ColorStateList.valueOf(j));
      }
      if (paramToolbar != null) {
        paramToolbar.setBackgroundColor(i);
      }
      if (Build.VERSION.SDK_INT < 21) {
        break;
      }
      c.a(paramd, android.support.v4.a.a.l(419430400, i));
      return;
      i = -16777216;
      break label16;
    }
  }
  
  public static void a(d paramd, Toolbar paramToolbar, final Menu paramMenu, com.vent.a.h paramh)
  {
    if ((paramd == null) || (paramToolbar == null)) {
      return;
    }
    if (paramh != null) {}
    for (final int i = paramh.bC(paramd);; i = -1)
    {
      int j = 0;
      int k = paramMenu.size();
      while (j < k)
      {
        paramd = paramMenu.getItem(j);
        paramh = paramd.getIcon();
        if (paramh != null)
        {
          paramh.setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
          paramd.setIcon(paramh);
        }
        j += 1;
      }
    }
    paramToolbar.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
    {
      public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
      {
        this.cmQ.removeOnLayoutChangeListener(this);
        paramAnonymousInt2 = paramMenu.size();
        paramAnonymousInt1 = 0;
        while (paramAnonymousInt1 < paramAnonymousInt2)
        {
          paramAnonymousView = paramMenu.getItem(paramAnonymousInt1);
          paramAnonymousView = this.cmQ.findViewById(paramAnonymousView.getItemId());
          if ((paramAnonymousView instanceof TextView)) {
            ((TextView)paramAnonymousView).setTextColor(i);
          }
          paramAnonymousInt1 += 1;
        }
      }
    });
  }
  
  public static void a(d paramd, Menu paramMenu, com.vent.a.h paramh)
  {
    if (paramd == null) {
      return;
    }
    a(paramd, (Toolbar)paramd.findViewById(2131296949), paramMenu, paramh);
  }
  
  public static void a(d paramd, com.vent.a.h paramh)
  {
    if (paramd == null) {
      return;
    }
    a(paramd, (Toolbar)paramd.findViewById(2131296949), null, paramh);
  }
  
  public static void a(l paraml)
  {
    if (paraml != null) {}
    try
    {
      if (paraml.isShowing()) {
        paraml.dismiss();
      }
      return;
    }
    catch (Exception paraml) {}
  }
  
  public static void a(k paramk, CachedImageView paramCachedImageView, int paramInt1, int paramInt2)
  {
    if (paramk == null)
    {
      paramCachedImageView.setCachedImage(null);
      return;
    }
    a(paramk.cki, paramCachedImageView, paramInt1, paramInt2, paramInt1, paramInt2);
  }
  
  public static void a(x paramx, CachedImageView paramCachedImageView, int paramInt1, int paramInt2)
  {
    if (paramx == null)
    {
      paramCachedImageView.setCachedImage(null);
      return;
    }
    a(paramx.ckN, paramCachedImageView, paramInt1, 0, paramInt2, 0);
  }
  
  /* Error */
  public static void a(File paramFile, Parcel paramParcel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 531	android/os/Parcel:marshall	()[B
    //   4: astore_1
    //   5: new 533	java/io/FileOutputStream
    //   8: dup
    //   9: aload_0
    //   10: invokespecial 536	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   13: astore_0
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 540	java/io/FileOutputStream:write	([B)V
    //   19: aload_0
    //   20: invokestatic 543	com/vent/d/c:c	(Ljava/io/Closeable;)V
    //   23: return
    //   24: astore_0
    //   25: aconst_null
    //   26: astore_0
    //   27: goto -8 -> 19
    //   30: astore_1
    //   31: goto -12 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	paramFile	File
    //   0	34	1	paramParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   0	14	24	java/lang/Exception
    //   14	19	30	java/lang/Exception
  }
  
  public static void a(File paramFile, JSONObject paramJSONObject)
  {
    try
    {
      paramFile = new FileWriter(paramFile);
      paramFile.write(paramJSONObject.toString());
      paramFile.close();
      return;
    }
    catch (Exception paramFile) {}
  }
  
  private static void a(String paramString, CachedImageView paramCachedImageView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramCachedImageView.cdR instanceof a))
    {
      ((a)paramCachedImageView.cdR).cdT = null;
      paramCachedImageView.cdR = null;
    }
    if (paramString == null)
    {
      paramCachedImageView.setCachedImage(null);
      return;
    }
    Object localObject = aJ(paramInt1, paramInt2);
    paramInt1 = localObject[0];
    paramInt2 = localObject[1];
    label65:
    int i;
    label93:
    Context localContext;
    if (paramInt2 != 0)
    {
      localObject = j(paramString, paramInt1, paramInt2);
      if ((paramCachedImageView.cdO != null) && (paramCachedImageView.cdP == paramInt1))
      {
        int j = paramCachedImageView.cdQ;
        if (paramInt2 == 0) {
          break label378;
        }
        i = paramInt2;
        if ((j == i) && (TextUtils.equals(paramCachedImageView.cdM, (CharSequence)localObject))) {
          break label382;
        }
      }
      localContext = paramCachedImageView.getContext();
      a locala = new a((byte)0);
      locala.cdT = paramCachedImageView;
      paramCachedImageView.cdR = locala;
      if (paramInt2 == 0) {
        break label384;
      }
      i = paramInt2;
      label147:
      if (ae.a(localContext, (String)localObject, paramInt1, i, false, locala) == 2) {
        break label388;
      }
      localObject = aJ(paramInt3, paramInt4);
      paramInt4 = localObject[0];
      paramInt3 = localObject[1];
      if (paramInt3 == 0) {
        break label390;
      }
      label190:
      paramInt3 = paramInt4 * paramInt3;
      if (paramInt2 == 0) {
        break label397;
      }
      label201:
      paramInt4 *= paramInt2;
      if ((paramInt4 == MyApplication.cgn) || (paramInt3 < MyApplication.cgn)) {
        break label407;
      }
    }
    label378:
    label382:
    label384:
    label388:
    label390:
    label397:
    label405:
    label407:
    for (paramInt1 = ae.a(localContext, j(paramString, MyApplication.cgm), MyApplication.cgm, MyApplication.cgm, paramCachedImageView);; paramInt1 = 0)
    {
      paramInt2 = paramInt1;
      if (paramInt1 == 0)
      {
        paramInt2 = paramInt1;
        if (MyApplication.cgp != MyApplication.cgn)
        {
          paramInt2 = paramInt1;
          if (paramInt4 != MyApplication.cgp)
          {
            paramInt2 = paramInt1;
            if (paramInt3 >= MyApplication.cgp) {
              paramInt2 = ae.a(localContext, j(paramString, MyApplication.cgo), MyApplication.cgo, MyApplication.cgo, paramCachedImageView);
            }
          }
        }
      }
      if ((paramInt2 == 0) && (MyApplication.cgl != MyApplication.cgn) && (MyApplication.cgl != MyApplication.cgp) && (paramInt4 != MyApplication.cgl) && (paramInt3 >= MyApplication.cgl)) {}
      for (paramInt1 = ae.a(localContext, j(paramString, MyApplication.cgk), MyApplication.cgk, MyApplication.cgk, paramCachedImageView);; paramInt1 = paramInt2)
      {
        if (paramInt1 != 0) {
          break label405;
        }
        paramCachedImageView.setCachedImage(null);
        return;
        localObject = j(paramString, paramInt1);
        break label65;
        i = paramInt1;
        break label93;
        break;
        i = paramInt1;
        break label147;
        break;
        paramInt3 = paramInt4;
        break label190;
        paramInt2 = paramInt1;
        break label201;
      }
      break;
    }
  }
  
  public static void a(WeakReference<com.vent.a> paramWeakReference, Menu paramMenu, String paramString, HashMap<m, x> paramHashMap, HashMap<String, com.vent.a.r> paramHashMap1)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      Object localObject = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
      PackageManager localPackageManager = ((com.vent.a)paramWeakReference.get()).getPackageManager();
      localObject = localPackageManager.queryIntentActivities((Intent)localObject, 0);
      if (!((List)localObject).isEmpty())
      {
        paramWeakReference = e.a(paramWeakReference, null, paramString, Integer.MAX_VALUE, 0, paramHashMap, paramHashMap1, false, true, 1);
        if (paramWeakReference == null) {}
        for (paramWeakReference = null;; paramWeakReference = paramWeakReference.toString())
        {
          paramString = ((List)localObject).iterator();
          int i = 100;
          while (paramString.hasNext())
          {
            paramHashMap = (ResolveInfo)paramString.next();
            if ((bb.cij) || (((Build.VERSION.SDK_INT >= 17) || (!paramHashMap.activityInfo.name.equals("com.google.android.apps.translate.QuickTranslateActivity"))) && (!paramHashMap.activityInfo.packageName.equals("org.wikipedia")) && (!paramHashMap.activityInfo.packageName.equals("org.wikipedia.beta")) && (!paramHashMap.activityInfo.name.equals("com.google.android.apps.gsa.assist.LaunchNowOnTapActivity"))))
            {
              paramHashMap1 = paramMenu.add(0, 0, i, paramHashMap.loadLabel(localPackageManager));
              localObject = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
              ((Intent)localObject).putExtra("android.intent.extra.PROCESS_TEXT", paramWeakReference);
              ((Intent)localObject).putExtra("android.intent.extra.PROCESS_TEXT_READONLY", true);
              ((Intent)localObject).setClassName(paramHashMap.activityInfo.packageName, paramHashMap.activityInfo.name);
              paramHashMap1.setIntent((Intent)localObject);
              paramHashMap1.setShowAsAction(1);
              i += 1;
            }
          }
        }
      }
    }
  }
  
  public static boolean a(TextInputLayout paramTextInputLayout, EditText paramEditText)
  {
    String str = paramEditText.getText().toString();
    int i = 0;
    while (i < str.length())
    {
      int j = str.charAt(i);
      if (((j < 97) || (j > 122)) && ((j < 65) || (j > 90)) && ((j < 48) || (j > 57)))
      {
        paramTextInputLayout.setError(paramEditText.getContext().getString(2131689762));
        return false;
      }
      i += 1;
    }
    if ((str.length() == 0) || (str.length() > 16))
    {
      paramTextInputLayout.setError(paramEditText.getContext().getString(2131689821));
      return false;
    }
    paramTextInputLayout.setError(null);
    return true;
  }
  
  public static boolean a(TextInputLayout paramTextInputLayout, EditText paramEditText1, EditText paramEditText2)
  {
    boolean bool = paramEditText1.getText().toString().equals(paramEditText2.getText().toString());
    if (bool)
    {
      paramTextInputLayout.setError(null);
      return bool;
    }
    paramTextInputLayout.setError(paramEditText1.getContext().getString(2131689619));
    return bool;
  }
  
  private static int[] aI(int paramInt1, int paramInt2)
  {
    int m = 1600;
    int k = 480;
    int j;
    int i;
    if (paramInt1 >= Integer.MAX_VALUE)
    {
      j = paramInt1;
      i = paramInt2;
      if (paramInt2 >= Integer.MAX_VALUE) {}
    }
    else
    {
      if (paramInt1 <= 1600) {
        break label89;
      }
      paramInt2 = paramInt2 * 1600 / paramInt1;
      paramInt1 = m;
    }
    label89:
    for (;;)
    {
      if (paramInt2 > 480)
      {
        paramInt1 = paramInt1 * 480 / paramInt2;
        paramInt2 = k;
      }
      for (;;)
      {
        j = eS(paramInt1);
        i = eS(paramInt2);
        return new int[] { j, i };
      }
    }
  }
  
  public static int[] aJ(int paramInt1, int paramInt2)
  {
    if ((paramInt2 <= 0) || (paramInt1 == paramInt2)) {
      return new int[] { eR(paramInt1), paramInt2 };
    }
    return aI(paramInt1, paramInt2);
  }
  
  public static com.vent.a.h b(g paramg)
  {
    return a(null, paramg);
  }
  
  public static com.vent.a.h b(HashMap<m, com.vent.a.h> paramHashMap, m paramm)
  {
    Object localObject = null;
    if (paramHashMap != null)
    {
      paramHashMap = com.vent.a.h.a(paramHashMap, paramm);
      localObject = paramHashMap;
      if (paramHashMap == null) {
        localObject = paramHashMap;
      }
    }
    else if (bb.ciO != null)
    {
      localObject = com.vent.a.h.a(bb.ciO, paramm);
    }
    return (com.vent.a.h)localObject;
  }
  
  public static void b(AsyncTask<Void, Void, Void> paramAsyncTask)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      return;
    }
    paramAsyncTask.execute(new Void[0]);
  }
  
  public static void b(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (paramParcelFileDescriptor != null) {}
    try
    {
      paramParcelFileDescriptor.close();
      return;
    }
    catch (Exception paramParcelFileDescriptor) {}
  }
  
  private static void b(View paramView, CharSequence paramCharSequence, int paramInt)
  {
    if ((paramView != null) && (paramCharSequence != null) && (bG(paramView.getContext()))) {}
    try
    {
      Snackbar.a(paramView, paramCharSequence, paramInt).show();
      return;
    }
    catch (Exception paramView) {}
  }
  
  public static boolean b(TextInputLayout paramTextInputLayout, EditText paramEditText)
  {
    String str = paramEditText.getText().toString();
    if (str.length() < 6)
    {
      paramTextInputLayout.setError(paramEditText.getContext().getString(2131689620));
      return false;
    }
    int k = 0;
    int j = 0;
    int i = 0;
    if (k < str.length())
    {
      char c = str.charAt(k);
      if ((i != 0) || (Character.isLetter(c)))
      {
        i = 1;
        label74:
        if ((j == 0) && (!Character.isDigit(c))) {
          break label103;
        }
      }
      label103:
      for (j = 1;; j = 0)
      {
        k += 1;
        break;
        i = 0;
        break label74;
      }
    }
    if (i == 0)
    {
      paramTextInputLayout.setError(paramEditText.getContext().getString(2131689622));
      return false;
    }
    if (j == 0)
    {
      paramTextInputLayout.setError(paramEditText.getContext().getString(2131689621));
      return false;
    }
    paramTextInputLayout.setError(null);
    return true;
  }
  
  public static boolean b(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    try
    {
      byte[] arrayOfByte = new byte['䀀'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i < 0) {
          return true;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
      return false;
    }
    catch (Exception paramInputStream) {}
  }
  
  public static void bD(Context paramContext)
  {
    try
    {
      File localFile = cmL;
      if (localFile == null) {}
      try
      {
        paramContext = paramContext.getExternalFilesDir(null);
        if (paramContext != null)
        {
          paramContext.mkdirs();
          paramContext = new File(paramContext, "log.txt");
          cmL = paramContext;
          if (!paramContext.exists()) {
            cmL.createNewFile();
          }
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          cmL = null;
        }
      }
      return;
    }
    finally {}
  }
  
  public static boolean bE(Context paramContext)
  {
    if (paramContext != null) {
      try
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext != null)
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if (paramContext != null)
          {
            boolean bool = paramContext.isConnected();
            return bool;
          }
        }
      }
      catch (Exception paramContext) {}
    }
    return true;
  }
  
  public static boolean bF(Context paramContext)
  {
    return bG(paramContext);
  }
  
  public static boolean bG(Context paramContext)
  {
    if (!(paramContext instanceof Activity)) {
      return false;
    }
    if (((Activity)paramContext).isFinishing()) {
      return false;
    }
    return (!(paramContext instanceof com.vent.a)) || (!((com.vent.a)paramContext).bTy);
  }
  
  public static void bH(Context paramContext)
  {
    try
    {
      AppWidgetManager localAppWidgetManager = AppWidgetManager.getInstance(paramContext);
      AppWidget.a(paramContext, localAppWidgetManager, localAppWidgetManager.getAppWidgetIds(new ComponentName(paramContext, AppWidget.class)));
      try
      {
        if (cmM == null) {
          cmM = Boolean.valueOf(me.leolin.shortcutbadger.c.ce(paramContext));
        }
        if (cmM.booleanValue()) {
          me.leolin.shortcutbadger.c.w(paramContext, bb.ciF + bb.ciG);
        }
      }
      catch (Exception localException1)
      {
        for (;;) {}
      }
      if (((bb.cig == 1) || (bb.cig == 3)) && (bb.ciF == 0) && (bb.ciG == 0)) {}
      try
      {
        paramContext = (NotificationManager)paramContext.getSystemService("notification");
        if (paramContext != null) {
          paramContext.cancelAll();
        }
        return;
      }
      catch (Exception paramContext) {}
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
  
  public static int bI(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (Exception paramContext) {}
    return 0;
  }
  
  public static int bJ(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }
  
  public static void c(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception paramCloseable) {}
  }
  
  private static int d(String paramString, int paramInt1, int paramInt2)
  {
    int j = paramInt1 + 1;
    paramInt1 = paramString.charAt(paramInt1);
    int i;
    if (paramInt1 == 45)
    {
      i = -1;
      paramInt1 = 0;
    }
    while (j < paramInt2)
    {
      paramInt1 = paramInt1 * 10 + paramString.charAt(j) - 48;
      j += 1;
      continue;
      i = 1;
      paramInt1 -= 48;
    }
    return i * paramInt1;
  }
  
  public static void d(Context paramContext, int paramInt1, int paramInt2)
  {
    View localView;
    if ((paramContext instanceof Activity))
    {
      localView = ((Activity)paramContext).findViewById(2131296682);
      if (paramContext == null) {
        break label40;
      }
      paramContext = paramContext.getString(paramInt1);
    }
    for (;;)
    {
      b(localView, paramContext, paramInt2);
      return;
      localView = null;
      break;
      label40:
      if (localView != null)
      {
        paramContext = localView.getContext();
        if (paramContext != null)
        {
          paramContext = paramContext.getString(paramInt1);
          continue;
        }
      }
      paramContext = null;
    }
  }
  
  public static <T> T[] d(T[] paramArrayOfT)
  {
    if (paramArrayOfT.length <= 0) {
      return paramArrayOfT;
    }
    return (Object[])a(paramArrayOfT, Array.newInstance(paramArrayOfT[0].getClass(), paramArrayOfT.length), 0);
  }
  
  public static <T> ArrayList<T> e(ArrayList<T> paramArrayList1, ArrayList<T> paramArrayList2)
  {
    if (f(paramArrayList2))
    {
      paramArrayList2 = paramArrayList1;
      if (paramArrayList1 == null) {
        paramArrayList2 = new ArrayList();
      }
      return paramArrayList2;
    }
    if (f(paramArrayList1)) {
      return paramArrayList2;
    }
    paramArrayList1.ensureCapacity(paramArrayList1.size() + paramArrayList2.size());
    Iterator localIterator = paramArrayList2.iterator();
    for (;;)
    {
      paramArrayList2 = paramArrayList1;
      if (!localIterator.hasNext()) {
        break;
      }
      paramArrayList2 = localIterator.next();
      if (!paramArrayList1.contains(paramArrayList2)) {
        paramArrayList1.add(paramArrayList2);
      }
    }
  }
  
  public static int eR(int paramInt)
  {
    int i = paramInt;
    if (paramInt < Integer.MAX_VALUE) {
      if (paramInt >= 180) {
        break label29;
      }
    }
    label29:
    for (paramInt = 120;; paramInt = (paramInt + 60) / 120 * 120)
    {
      i = Math.min(paramInt, 360);
      return i;
    }
  }
  
  private static int eS(int paramInt)
  {
    if (paramInt < 75) {
      return 60;
    }
    return (paramInt + 60) / 120 * 120;
  }
  
  public static String eo(String paramString)
  {
    int j = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(j);
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      if (((c >= 'A') && (c <= 'M')) || ((c >= 'a') && (c <= 'm'))) {
        localStringBuilder.append((char)(c + '\r'));
      }
      for (;;)
      {
        i += 1;
        break;
        if (((c >= 'N') && (c <= 'Z')) || ((c >= 'n') && (c <= 'z'))) {
          localStringBuilder.append((char)(c - '\r'));
        } else {
          localStringBuilder.append(c);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static Date et(String paramString)
  {
    if (paramString != null) {
      try
      {
        if ((paramString.length() == 24) && (paramString.charAt(10) == 'T') && (paramString.charAt(23) == 'Z'))
        {
          Object localObject = (Calendar)cmJ.get();
          ((Calendar)localObject).set(d(paramString, 0, 4), d(paramString, 5, 7) - 1, d(paramString, 8, 10), d(paramString, 11, 13), d(paramString, 14, 16), d(paramString, 17, 19));
          ((Calendar)localObject).set(14, d(paramString, 20, 23));
          localObject = ((Calendar)localObject).getTime();
          return (Date)localObject;
        }
      }
      catch (Exception localException)
      {
        try
        {
          paramString = ((SimpleDateFormat)cmI.get()).parse(paramString);
          return paramString;
        }
        catch (Exception paramString) {}
      }
    }
    return null;
  }
  
  public static void eu(String paramString)
  {
    h(1, paramString);
  }
  
  public static String ev(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    label86:
    do
    {
      do
      {
        do
        {
          do
          {
            return str;
            if (!paramString.startsWith("http://res.cloudinary.com/")) {
              break;
            }
            i = paramString.indexOf("/http", 1);
            str = paramString;
          } while (i <= 0);
          paramString = Uri.decode(paramString.substring(i + 1));
          break;
          if (!paramString.startsWith("https://res.cloudinary.com/")) {
            break label86;
          }
          i = paramString.indexOf("/http", 1);
          str = paramString;
        } while (i <= 0);
        paramString = Uri.decode(paramString.substring(i + 1));
        break;
        str = paramString;
      } while (!paramString.contains("://thumbor.ventfeed.com"));
      i = Math.max(paramString.lastIndexOf("http:"), paramString.lastIndexOf("https:"));
      str = paramString;
    } while (i < 0);
    return paramString.substring(i);
  }
  
  public static boolean f(Collection paramCollection)
  {
    return (paramCollection == null) || (paramCollection.isEmpty());
  }
  
  public static g g(m paramm)
  {
    return a(null, paramm);
  }
  
  private static String g(Object paramObject, String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      if ((paramObject instanceof JSONArray))
      {
        paramObject = (JSONArray)paramObject;
        while (i < ((JSONArray)paramObject).length())
        {
          if (localStringBuilder.length() != 0) {
            localStringBuilder.append(paramString);
          }
          localStringBuilder.append(g(((JSONArray)paramObject).get(i), ". "));
          i += 1;
        }
      }
      if ((paramObject instanceof JSONObject))
      {
        paramObject = (JSONObject)paramObject;
        if (((JSONObject)paramObject).length() > 0)
        {
          Iterator localIterator = ((JSONObject)paramObject).keys();
          while (localIterator.hasNext())
          {
            if (localStringBuilder.length() != 0) {
              localStringBuilder.append(paramString);
            }
            String str = (String)localIterator.next();
            localStringBuilder.append(Character.toUpperCase(str.charAt(0))).append(str.substring(1)).append(" ").append(g(((JSONObject)paramObject).get(str), ", "));
          }
        }
        return localStringBuilder.toString();
      }
    }
    catch (JSONException paramObject) {}
    for (;;)
    {
      localStringBuilder.append(paramObject.toString());
    }
  }
  
  public static com.vent.a.h h(m paramm)
  {
    return a(null, a(null, paramm));
  }
  
  private static String h(JSONObject paramJSONObject, String paramString)
  {
    String str2 = "";
    String str1 = str2;
    if (paramJSONObject != null) {
      str1 = str2;
    }
    try
    {
      if (!paramJSONObject.isNull(paramString)) {
        str1 = g(paramJSONObject.get(paramString), ". ");
      }
      return str1;
    }
    catch (JSONException paramJSONObject) {}
    return "";
  }
  
  public static JSONObject h(Exception paramException)
  {
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject();
        Throwable localThrowable = paramException.getCause();
        if (localThrowable != null)
        {
          localObject2 = localThrowable.getMessage();
          Object localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = paramException.getMessage();
          }
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            localObject2 = localObject1;
            if (localThrowable != null) {
              localObject2 = localThrowable.toString();
            }
          }
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = paramException.toString();
          }
          localJSONObject.put("exception", localObject1);
          return localJSONObject;
        }
      }
      catch (JSONException paramException)
      {
        return null;
      }
      Object localObject2 = null;
    }
  }
  
  /* Error */
  public static void h(int paramInt, String paramString)
  {
    // Byte code:
    //   0: iload_0
    //   1: ifne +4 -> 5
    //   4: return
    //   5: getstatic 63	com/vent/d/c:cmK	Ljava/lang/ThreadLocal;
    //   8: invokevirtual 983	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   11: checkcast 985	java/util/Calendar
    //   14: astore 6
    //   16: aload 6
    //   18: invokestatic 1100	java/lang/System:currentTimeMillis	()J
    //   21: invokevirtual 1104	java/util/Calendar:setTimeInMillis	(J)V
    //   24: new 69	java/lang/StringBuilder
    //   27: dup
    //   28: bipush 14
    //   30: invokespecial 975	java/lang/StringBuilder:<init>	(I)V
    //   33: astore 7
    //   35: aload 6
    //   37: iconst_2
    //   38: invokevirtual 1106	java/util/Calendar:get	(I)I
    //   41: iconst_1
    //   42: iadd
    //   43: istore_2
    //   44: iload_2
    //   45: bipush 10
    //   47: if_icmpge +11 -> 58
    //   50: aload 7
    //   52: bipush 48
    //   54: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   57: pop
    //   58: aload 7
    //   60: iload_2
    //   61: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: bipush 47
    //   66: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload 6
    //   72: iconst_5
    //   73: invokevirtual 1106	java/util/Calendar:get	(I)I
    //   76: istore_2
    //   77: iload_2
    //   78: bipush 10
    //   80: if_icmpge +11 -> 91
    //   83: aload 7
    //   85: bipush 48
    //   87: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   90: pop
    //   91: aload 7
    //   93: iload_2
    //   94: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   97: bipush 32
    //   99: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   102: pop
    //   103: aload 6
    //   105: bipush 11
    //   107: invokevirtual 1106	java/util/Calendar:get	(I)I
    //   110: istore_2
    //   111: iload_2
    //   112: bipush 10
    //   114: if_icmpge +11 -> 125
    //   117: aload 7
    //   119: bipush 48
    //   121: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload 7
    //   127: iload_2
    //   128: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   131: bipush 58
    //   133: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   136: pop
    //   137: aload 6
    //   139: bipush 12
    //   141: invokevirtual 1106	java/util/Calendar:get	(I)I
    //   144: istore_2
    //   145: iload_2
    //   146: bipush 10
    //   148: if_icmpge +11 -> 159
    //   151: aload 7
    //   153: bipush 48
    //   155: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   158: pop
    //   159: aload 7
    //   161: iload_2
    //   162: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   165: bipush 58
    //   167: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   170: pop
    //   171: aload 6
    //   173: bipush 13
    //   175: invokevirtual 1106	java/util/Calendar:get	(I)I
    //   178: istore_2
    //   179: iload_2
    //   180: bipush 10
    //   182: if_icmpge +11 -> 193
    //   185: aload 7
    //   187: bipush 48
    //   189: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   192: pop
    //   193: aload 7
    //   195: iload_2
    //   196: invokevirtual 78	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   199: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: astore 7
    //   204: iconst_0
    //   205: istore_2
    //   206: aload_1
    //   207: bipush 10
    //   209: iload_2
    //   210: invokevirtual 1108	java/lang/String:indexOf	(II)I
    //   213: istore_3
    //   214: new 69	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   221: aload 7
    //   223: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: bipush 32
    //   228: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   231: astore 8
    //   233: iload_3
    //   234: iconst_m1
    //   235: if_icmpne +227 -> 462
    //   238: iload_2
    //   239: ifne +213 -> 452
    //   242: aload_1
    //   243: astore 6
    //   245: aload 8
    //   247: aload 6
    //   249: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: astore 6
    //   257: iload_0
    //   258: iconst_1
    //   259: iand
    //   260: ifeq +12 -> 272
    //   263: ldc_w 1110
    //   266: aload 6
    //   268: invokestatic 1115	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   271: pop
    //   272: iload_0
    //   273: iconst_2
    //   274: iand
    //   275: ifeq +165 -> 440
    //   278: new 69	java/lang/StringBuilder
    //   281: dup
    //   282: invokespecial 214	java/lang/StringBuilder:<init>	()V
    //   285: aload 6
    //   287: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: bipush 10
    //   292: invokevirtual 978	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   295: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: astore 6
    //   300: ldc 2
    //   302: monitorenter
    //   303: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   306: astore 8
    //   308: aload 8
    //   310: ifnull +127 -> 437
    //   313: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   316: invokevirtual 831	java/io/File:exists	()Z
    //   319: ifeq +90 -> 409
    //   322: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   325: invokevirtual 1117	java/io/File:length	()J
    //   328: lstore 4
    //   330: lload 4
    //   332: ldc2_w 1118
    //   335: lcmp
    //   336: ifle +73 -> 409
    //   339: new 1121	java/io/FileInputStream
    //   342: dup
    //   343: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   346: invokespecial 1122	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   349: astore 9
    //   351: ldc_w 1123
    //   354: newarray <illegal type>
    //   356: astore 8
    //   358: aload 9
    //   360: lload 4
    //   362: ldc2_w 1124
    //   365: lsub
    //   366: invokevirtual 1129	java/io/FileInputStream:skip	(J)J
    //   369: pop2
    //   370: aload 9
    //   372: aload 8
    //   374: invokevirtual 1130	java/io/FileInputStream:read	([B)I
    //   377: istore_2
    //   378: aload 9
    //   380: invokevirtual 1131	java/io/FileInputStream:close	()V
    //   383: new 533	java/io/FileOutputStream
    //   386: dup
    //   387: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   390: invokespecial 536	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   393: astore 9
    //   395: aload 9
    //   397: aload 8
    //   399: iconst_0
    //   400: iload_2
    //   401: invokevirtual 1132	java/io/FileOutputStream:write	([BII)V
    //   404: aload 9
    //   406: invokevirtual 1133	java/io/FileOutputStream:close	()V
    //   409: new 533	java/io/FileOutputStream
    //   412: dup
    //   413: getstatic 814	com/vent/d/c:cmL	Ljava/io/File;
    //   416: iconst_1
    //   417: invokespecial 1136	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   420: astore 8
    //   422: aload 8
    //   424: aload 6
    //   426: invokevirtual 1139	java/lang/String:getBytes	()[B
    //   429: invokevirtual 540	java/io/FileOutputStream:write	([B)V
    //   432: aload 8
    //   434: invokevirtual 1133	java/io/FileOutputStream:close	()V
    //   437: ldc 2
    //   439: monitorexit
    //   440: iload_3
    //   441: iconst_m1
    //   442: if_icmpeq -438 -> 4
    //   445: iload_3
    //   446: iconst_1
    //   447: iadd
    //   448: istore_2
    //   449: goto -243 -> 206
    //   452: aload_1
    //   453: iload_2
    //   454: invokevirtual 1018	java/lang/String:substring	(I)Ljava/lang/String;
    //   457: astore 6
    //   459: goto -214 -> 245
    //   462: aload_1
    //   463: iload_2
    //   464: iload_3
    //   465: invokevirtual 1142	java/lang/String:substring	(II)Ljava/lang/String;
    //   468: astore 6
    //   470: goto -225 -> 245
    //   473: astore_1
    //   474: ldc 2
    //   476: monitorexit
    //   477: aload_1
    //   478: athrow
    //   479: astore 6
    //   481: goto -44 -> 437
    //   484: astore 8
    //   486: goto -77 -> 409
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	489	0	paramInt	int
    //   0	489	1	paramString	String
    //   43	421	2	i	int
    //   213	252	3	j	int
    //   328	33	4	l	long
    //   14	455	6	localObject1	Object
    //   479	1	6	localException1	Exception
    //   33	189	7	localObject2	Object
    //   231	202	8	localObject3	Object
    //   484	1	8	localException2	Exception
    //   349	56	9	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   303	308	473	finally
    //   313	330	473	finally
    //   339	409	473	finally
    //   409	437	473	finally
    //   437	440	473	finally
    //   474	477	473	finally
    //   409	437	479	java/lang/Exception
    //   313	330	484	java/lang/Exception
    //   339	409	484	java/lang/Exception
  }
  
  public static boolean h(File paramFile)
  {
    if (paramFile.exists())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int j = arrayOfFile.length;
        int i = 0;
        while (i < j)
        {
          File localFile = arrayOfFile[i];
          if (localFile.isDirectory())
          {
            if (!h(localFile)) {
              return false;
            }
          }
          else if (!localFile.delete())
          {
            eu("failed delete file " + localFile.getAbsolutePath());
            return false;
          }
          i += 1;
        }
      }
      if (!paramFile.delete())
      {
        eu("failed delete dir " + paramFile.getAbsolutePath());
        return false;
      }
    }
    return true;
  }
  
  public static JSONObject i(File paramFile)
  {
    if ((paramFile.exists()) && (paramFile.length() > 0L)) {
      try
      {
        FileReader localFileReader = new FileReader(paramFile);
        paramFile = new char[(int)paramFile.length()];
        int i = localFileReader.read(paramFile);
        localFileReader.close();
        paramFile = new JSONObject(new String(paramFile, 0, i));
        return paramFile;
      }
      catch (Exception paramFile) {}
    }
    return null;
  }
  
  public static boolean i(Set paramSet)
  {
    return (paramSet == null) || (paramSet.isEmpty());
  }
  
  public static boolean isExternalStorageEmulated(File paramFile)
  {
    if ((paramFile != null) && (Build.VERSION.SDK_INT >= 21)) {
      try
      {
        boolean bool = Environment.isExternalStorageEmulated(paramFile);
        return bool;
      }
      catch (IllegalArgumentException paramFile) {}
    }
    return (Build.VERSION.SDK_INT >= 11) && (Environment.isExternalStorageEmulated());
  }
  
  public static Parcel j(File paramFile)
  {
    if ((paramFile.exists()) && (paramFile.length() > 4L))
    {
      try
      {
        localFileInputStream = new FileInputStream(paramFile);
        byte[] arrayOfByte;
        if (paramFile == null) {
          break label67;
        }
      }
      catch (Exception paramFile)
      {
        try
        {
          arrayOfByte = new byte[localFileInputStream.available()];
          localFileInputStream.read(arrayOfByte);
          paramFile = Parcel.obtain();
        }
        catch (Exception paramFile)
        {
          for (;;)
          {
            FileInputStream localFileInputStream;
            paramFile = null;
          }
        }
        try
        {
          paramFile.unmarshall(arrayOfByte, 0, arrayOfByte.length);
          return paramFile;
        }
        catch (Exception localException)
        {
          break label59;
        }
        paramFile = paramFile;
        localFileInputStream = null;
        paramFile = null;
      }
      label59:
      paramFile.recycle();
      label67:
      c(localFileInputStream);
    }
    else
    {
      return null;
    }
  }
  
  public static String j(String paramString, int paramInt)
  {
    paramInt = eR(paramInt);
    return k(paramString, paramInt, paramInt);
  }
  
  public static String j(String paramString, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = aI(paramInt1, paramInt2);
    return k(paramString, arrayOfInt[0], arrayOfInt[1]);
  }
  
  private static String k(String paramString, int paramInt1, int paramInt2)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      String str;
      if (paramInt1 >= Integer.MAX_VALUE)
      {
        str = paramString;
        if (paramInt2 >= Integer.MAX_VALUE) {}
      }
      else
      {
        str = "https://res.cloudinary.com/vent/image/fetch/c_fill,f_auto,h_" + paramInt2 + ",q_70,w_" + paramInt1 + '/' + paramString;
      }
      return str;
    }
    return null;
  }
  
  public static String k(Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    Calendar localCalendar = (Calendar)cmJ.get();
    localCalendar.setTime(paramDate);
    paramDate = new StringBuilder(24).append(localCalendar.get(1)).append('-');
    int i = localCalendar.get(2) + 1;
    if (i < 10) {
      paramDate.append('0');
    }
    paramDate.append(i).append('-');
    i = localCalendar.get(5);
    if (i < 10) {
      paramDate.append('0');
    }
    paramDate.append(i).append('T');
    i = localCalendar.get(11);
    if (i < 10) {
      paramDate.append('0');
    }
    paramDate.append(i).append(':');
    i = localCalendar.get(12);
    if (i < 10) {
      paramDate.append('0');
    }
    paramDate.append(i).append(':');
    i = localCalendar.get(13);
    if (i < 10) {
      paramDate.append('0');
    }
    paramDate.append(i).append('.');
    i = localCalendar.get(14);
    if (i < 10) {
      paramDate.append("00");
    }
    for (;;)
    {
      return i + 'Z';
      if (i < 100) {
        paramDate.append('0');
      }
    }
  }
  
  public static boolean l(Map paramMap)
  {
    return (paramMap == null) || (paramMap.isEmpty());
  }
  
  public static void q(android.support.v4.app.i parami)
  {
    if (parami != null) {
      t(parami.getActivity());
    }
  }
  
  public static void t(Activity paramActivity)
  {
    if (paramActivity != null)
    {
      Object localObject = paramActivity.getCurrentFocus();
      if ((paramActivity != null) && (localObject != null))
      {
        localObject = ((View)localObject).getWindowToken();
        if (localObject != null)
        {
          paramActivity = (InputMethodManager)paramActivity.getSystemService("input_method");
          if (paramActivity != null) {
            paramActivity.hideSoftInputFromWindow((IBinder)localObject, 0);
          }
        }
      }
    }
  }
  
  public static android.support.v7.app.c v(Context paramContext, int paramInt)
  {
    if (!bG(paramContext)) {
      return null;
    }
    try
    {
      paramContext = new android.support.v7.app.c.a(paramContext).setView(2131427429).setCancelable(false).show();
      if (paramContext != null)
      {
        if (paramInt == 0) {
          break label62;
        }
        ((TextView)paramContext.findViewById(16908308)).setText(paramInt);
      }
      for (;;)
      {
        a(paramContext, 240);
        return paramContext;
        label62:
        paramContext.findViewById(16908308).setVisibility(8);
      }
      return null;
    }
    catch (Exception paramContext) {}
  }
  
  public static void w(Context paramContext, String paramString)
  {
    try
    {
      if (Build.VERSION.SDK_INT < 11)
      {
        paramContext = (android.text.ClipboardManager)paramContext.getSystemService("clipboard");
        if (paramContext != null) {
          paramContext.setText(paramString);
        }
      }
      else
      {
        paramContext = (android.content.ClipboardManager)paramContext.getSystemService("clipboard");
        if (paramContext != null)
        {
          paramString = ClipData.newPlainText("Vent", paramString);
          if (paramString != null)
          {
            paramContext.setPrimaryClip(paramString);
            return;
          }
        }
      }
    }
    catch (Exception paramContext) {}
  }
  
  public static void w(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    try
    {
      paramCursor.close();
      return;
    }
    catch (Exception paramCursor) {}
  }
  
  public static void x(Context paramContext, String paramString)
  {
    if ((paramContext != null) && (!TextUtils.isEmpty(paramString))) {}
    try
    {
      paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      paramString.putExtra("com.android.browser.application_id", paramContext.getPackageName());
      paramContext.startActivity(paramString);
      return;
    }
    catch (ActivityNotFoundException paramContext) {}
  }
  
  private static final class a
    implements ae.a
  {
    ae.c cdO;
    CachedImageView cdT;
    
    private void Dr()
    {
      if (this.cdO != null)
      {
        this.cdO.b(this);
        this.cdO = null;
      }
    }
    
    public final void Di()
    {
      if (this.cdT != null)
      {
        this.cdT.setCachedImage(this.cdO);
        this.cdT.cdR = null;
        this.cdT = null;
      }
      Dr();
    }
    
    public final void e(ae.c paramc)
    {
      if (this.cdO != paramc) {
        Dr();
      }
      this.cdO = paramc;
    }
  }
  
  public static abstract class b
    implements Runnable
  {
    public Object cmT;
  }
  
  public static final class c
  {
    @TargetApi(21)
    public static void a(Activity paramActivity, int paramInt)
    {
      if ((paramInt & 0xFF000000) != -16777216) {
        ((ViewGroup)paramActivity.findViewById(16908290)).getChildAt(0).setSystemUiVisibility(1280);
      }
      paramActivity = paramActivity.getWindow();
      paramActivity.clearFlags(67108864);
      paramActivity.addFlags(Integer.MIN_VALUE);
      paramActivity.setStatusBarColor(paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */