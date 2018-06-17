package io.branch.referral;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import org.json.JSONObject;

public final class l
{
  private static l cxx;
  a cxA = null;
  boolean cxB = false;
  String cxC;
  boolean cxD;
  Dialog cxE;
  boolean cxy;
  boolean cxz;
  
  public static l GL()
  {
    if (cxx == null) {
      cxx = new l();
    }
    return cxx;
  }
  
  static void br(View paramView)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
    localAlphaAnimation.setDuration(500L);
    localAlphaAnimation.setStartOffset(10L);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    localAlphaAnimation.setFillAfter(true);
    paramView.setVisibility(0);
    paramView.startAnimation(localAlphaAnimation);
  }
  
  final boolean a(a parama, Context paramContext, b paramb)
  {
    if ((this.cxy) || (this.cxB))
    {
      if (paramb != null) {
        paramb.eC(parama.cxJ);
      }
      return false;
    }
    this.cxy = false;
    this.cxz = false;
    if ((paramContext != null) && (parama != null))
    {
      if (a.a(parama, paramContext))
      {
        if (!TextUtils.isEmpty(parama.cxM))
        {
          b(parama, paramContext, paramb);
          return true;
        }
        this.cxB = true;
        new c(parama, paramContext, paramb).execute(new Void[0]);
        return true;
      }
      if (paramb != null) {
        paramb.eC(parama.cxJ);
      }
    }
    return false;
  }
  
  public final boolean a(JSONObject paramJSONObject, String paramString, Context paramContext, b paramb)
  {
    return a(new a(paramJSONObject, paramString, (byte)0), paramContext, paramb);
  }
  
  final void b(final a parama, final Context paramContext, final b paramb)
  {
    if ((paramContext != null) && (parama != null))
    {
      paramContext = new WebView(paramContext);
      paramContext.getSettings().setJavaScriptEnabled(true);
      if (Build.VERSION.SDK_INT >= 19) {
        paramContext.setLayerType(2, null);
      }
      this.cxD = false;
      if (!TextUtils.isEmpty(parama.cxM))
      {
        paramContext.loadDataWithBaseURL(null, parama.cxM, "text/html", "utf-8", null);
        paramContext.setWebViewClient(new WebViewClient()
        {
          public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
            paramAnonymousWebView = l.this;
            paramAnonymousString = parama;
            l.b localb = paramb;
            WebView localWebView = paramContext;
            Activity localActivity;
            Object localObject;
            if ((!paramAnonymousWebView.cxD) && (d.Gt() != null) && (d.Gt().cwj != null))
            {
              localActivity = (Activity)d.Gt().cwj.get();
              if (localActivity != null)
              {
                localObject = localActivity.getApplicationContext();
                String str = paramAnonymousString.cxI;
                q.bT((Context)localObject);
                q.setInteger("bnc_branch_view_use_" + str, q.eO(str) + 1);
                paramAnonymousWebView.cxC = localActivity.getClass().getName();
                localObject = new RelativeLayout(localActivity);
                ((RelativeLayout)localObject).setVisibility(8);
                ((RelativeLayout)localObject).addView(localWebView, new RelativeLayout.LayoutParams(-1, -1));
                ((RelativeLayout)localObject).setBackgroundColor(0);
                if ((paramAnonymousWebView.cxE == null) || (!paramAnonymousWebView.cxE.isShowing())) {
                  break label198;
                }
                if (localb != null) {
                  localb.eC(paramAnonymousString.cxJ);
                }
              }
            }
            label198:
            do
            {
              return;
              paramAnonymousWebView.cxE = new Dialog(localActivity, 16973834);
              paramAnonymousWebView.cxE.setContentView((View)localObject);
              ((RelativeLayout)localObject).setVisibility(0);
              localWebView.setVisibility(0);
              paramAnonymousWebView.cxE.show();
              l.br((View)localObject);
              l.br(localWebView);
              paramAnonymousWebView.cxy = true;
              paramAnonymousWebView.cxE.setOnDismissListener(new l.2(paramAnonymousWebView, localb, paramAnonymousString));
              return;
              paramAnonymousWebView.cxy = false;
            } while (localb == null);
            localb.eC(paramAnonymousString.cxJ);
          }
          
          public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
          {
            super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
          }
          
          public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
          {
            super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
            l.this.cxD = true;
          }
          
          public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            boolean bool = l.this.eJ(paramAnonymousString);
            if (!bool) {
              paramAnonymousWebView.loadUrl(paramAnonymousString);
            }
            while (l.this.cxE == null) {
              return bool;
            }
            l.this.cxE.dismiss();
            return bool;
          }
        });
      }
    }
  }
  
  final boolean eJ(String paramString)
  {
    try
    {
      paramString = new URI(paramString);
      if (paramString.getScheme().equalsIgnoreCase("branch-cta"))
      {
        if (paramString.getHost().equalsIgnoreCase("accept"))
        {
          this.cxz = true;
          return true;
        }
        if (paramString.getHost().equalsIgnoreCase("cancel"))
        {
          this.cxz = false;
          return true;
        }
      }
    }
    catch (URISyntaxException paramString) {}
    return false;
  }
  
  public final boolean i(JSONObject paramJSONObject, String paramString)
  {
    a locala = new a(paramJSONObject, paramString, (byte)0);
    if (d.Gt().cwj != null)
    {
      Activity localActivity = (Activity)d.Gt().cwj.get();
      if ((localActivity != null) && (a.a(locala, localActivity)))
      {
        this.cxA = new a(paramJSONObject, paramString, (byte)0);
        return true;
      }
    }
    return false;
  }
  
  private final class a
  {
    String cxI = "";
    String cxJ = "";
    private int cxK = 1;
    String cxL = "";
    String cxM = "";
    
    private a(JSONObject paramJSONObject, String paramString)
    {
      try
      {
        this.cxJ = paramString;
        if (paramJSONObject.has(n.a.czA.key)) {
          this.cxI = paramJSONObject.getString(n.a.czA.key);
        }
        if (paramJSONObject.has(n.a.czC.key)) {
          this.cxK = paramJSONObject.getInt(n.a.czC.key);
        }
        if (paramJSONObject.has(n.a.czD.key)) {
          this.cxL = paramJSONObject.getString(n.a.czD.key);
        }
        if (paramJSONObject.has(n.a.czE.key)) {
          this.cxM = paramJSONObject.getString(n.a.czE.key);
        }
        return;
      }
      catch (Exception this$1) {}
    }
  }
  
  public static abstract interface b
  {
    public abstract void eA(String paramString);
    
    public abstract void eB(String paramString);
    
    public abstract void eC(String paramString);
  }
  
  private final class c
    extends AsyncTask<Void, Void, Boolean>
  {
    private final Context context;
    private final l.a cxN;
    private final l.b cxO;
    
    public c(l.a parama, Context paramContext, l.b paramb)
    {
      this.cxN = parama;
      this.context = paramContext;
      this.cxO = paramb;
    }
    
    private Boolean GM()
    {
      try
      {
        localObject = (HttpURLConnection)new URL(this.cxN.cxL).openConnection();
        ((HttpURLConnection)localObject).setRequestMethod("GET");
        ((HttpURLConnection)localObject).connect();
        i = ((HttpURLConnection)localObject).getResponseCode();
        j = i;
        if (i == 200) {
          try
          {
            ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
            localObject = ((HttpURLConnection)localObject).getInputStream();
            byte[] arrayOfByte = new byte['Ѐ'];
            for (;;)
            {
              j = ((InputStream)localObject).read(arrayOfByte);
              if (j == -1) {
                break;
              }
              localByteArrayOutputStream.write(arrayOfByte, 0, j);
            }
            j = i;
          }
          catch (Exception localException1) {}
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          Object localObject;
          int j;
          boolean bool;
          int i = -1;
        }
      }
      if (j == 200) {}
      for (bool = true;; bool = false)
      {
        return Boolean.valueOf(bool);
        this.cxN.cxM = localException1.toString("UTF-8");
        localException1.close();
        ((InputStream)localObject).close();
        j = i;
        break;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */