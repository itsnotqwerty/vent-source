package com.vent;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import android.view.Window;
import android.webkit.WebView;
import com.google.ads.consent.ConsentForm;
import com.google.ads.consent.ConsentForm.3;
import com.google.ads.consent.ConsentForm.Builder;
import com.google.ads.consent.ConsentForm.LoadState;
import com.google.ads.consent.ConsentFormListener;
import com.google.ads.consent.ConsentInfoUpdateListener;
import com.google.ads.consent.ConsentInformation;
import com.google.ads.consent.ConsentInformation.ConsentInfoUpdateTask;
import com.google.ads.consent.ConsentStatus;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;

public final class t
{
  static boolean ccD;
  static boolean ccE;
  static boolean ccF = true;
  
  static void aE(Context paramContext)
  {
    ConsentInformation localConsentInformation;
    String str1;
    if (!ccD)
    {
      ccD = true;
      ccF = true;
      localConsentInformation = ConsentInformation.o(paramContext);
      str1 = paramContext.getString(2131689893);
      paramContext = new ConsentInfoUpdateListener()
      {
        public final void kZ()
        {
          t.aF(this.val$context);
        }
        
        public final void la()
        {
          t.aF(this.val$context);
        }
      };
      if (!localConsentInformation.ld()) {
        break label81;
      }
      Log.i("ConsentInformation", "This request is sent from a test device.");
    }
    for (;;)
    {
      new ConsentInformation.ConsentInfoUpdateTask("https://adservice.google.com/getconfig/pubvendors", localConsentInformation, Arrays.asList(new String[] { str1 }), paramContext).execute(new Void[0]);
      return;
      label81:
      String str2 = localConsentInformation.lb();
      Log.i("ConsentInformation", String.valueOf(str2).length() + 93 + "Use ConsentInformation.getInstance(context).addTestDevice(\"" + str2 + "\") to get test ads on this device.");
    }
  }
  
  static void aF(Context paramContext)
  {
    boolean bool = ConsentInformation.o(paramContext).lh();
    ccE = bool;
    if (bool)
    {
      d(paramContext, true);
      return;
    }
    ccF = false;
  }
  
  static void d(Context paramContext, boolean paramBoolean)
  {
    Object localObject1 = ConsentInformation.o(paramContext).li();
    if (localObject1 == ConsentStatus.PERSONALIZED) {
      ccF = false;
    }
    for (;;)
    {
      return;
      if (localObject1 == ConsentStatus.NON_PERSONALIZED)
      {
        ccF = true;
        return;
      }
      if (paramBoolean)
      {
        Object localObject3 = ConsentInformation.o(paramContext);
        try
        {
          localObject1 = new URL(paramContext.getString(2131690092));
          ((ConsentInformation)localObject3).le();
          localObject3 = new a();
          paramContext = new ConsentForm.Builder(paramContext, (URL)localObject1);
          paramContext.listener = ((ConsentFormListener)localObject3);
          paramContext.personalizedAdsOption = true;
          paramContext.nonPersonalizedAdsOption = true;
          paramContext = new ConsentForm(paramContext, (byte)0);
          ((a)localObject3).ccG = paramContext;
          if (paramContext.loadState != ConsentForm.LoadState.LOADING) {
            if (paramContext.loadState == ConsentForm.LoadState.LOADED)
            {
              paramContext.listener.kX();
              return;
            }
          }
        }
        catch (MalformedURLException localMalformedURLException)
        {
          for (;;)
          {
            Object localObject2 = null;
          }
          paramContext.loadState = ConsentForm.LoadState.LOADING;
          paramContext.webView.loadUrl("file:///android_asset/consentform.html");
        }
      }
    }
  }
  
  static final class a
    extends ConsentFormListener
  {
    ConsentForm ccG;
    
    public final void kX()
    {
      ConsentForm localConsentForm = this.ccG;
      if ((localConsentForm.loadState == ConsentForm.LoadState.LOADED) && (!ConsentInformation.o(localConsentForm.context).lf()))
      {
        localConsentForm.dialog.getWindow().setLayout(-1, -1);
        localConsentForm.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        localConsentForm.dialog.setOnShowListener(new ConsentForm.3(localConsentForm));
        localConsentForm.dialog.show();
        localConsentForm.dialog.isShowing();
      }
    }
    
    public final void kY()
    {
      t.d(null, false);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */