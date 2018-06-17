package com.vent;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.h;
import android.support.v4.app.n;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView;
import com.davemorrissey.labs.subscaleview.SubsamplingScaleImageView.e;
import com.davemorrissey.labs.subscaleview.a;
import java.io.File;

public final class af
  extends h
  implements View.OnClickListener, SubsamplingScaleImageView.e, ae.a
{
  private android.support.v7.app.c bUO;
  private ae.c cdO;
  private SubsamplingScaleImageView cdS;
  private CachedImageView cdT;
  
  private void Dq()
  {
    if (this.cdS != null)
    {
      this.cdS.setVisibility(8);
      this.cdS.recycle();
      this.cdS = null;
    }
    Dr();
  }
  
  private void Dr()
  {
    if (this.cdO != null)
    {
      this.cdO.b(this);
      this.cdO = null;
    }
  }
  
  private void Ds()
  {
    Dq();
    if (this.cdT != null)
    {
      this.cdT.setVisibility(0);
      this.cdT.setCachedImage(getArguments().getString("s"));
    }
  }
  
  public static af a(Activity paramActivity, n paramn, String paramString)
  {
    if (com.vent.d.c.bF(paramActivity))
    {
      ae.a(true, "");
      System.gc();
      paramActivity = new af();
      Bundle localBundle = new Bundle();
      localBundle.putString("s", paramString);
      paramActivity.setArguments(localBundle);
      paramActivity.a(paramn, "");
      return paramActivity;
    }
    return null;
  }
  
  public final void Di()
  {
    if ((this.cdO != null) && (this.cdO.cdJ))
    {
      if (this.bUO != null)
      {
        this.bUO.setOnDismissListener(null);
        com.vent.d.c.a(this.bUO);
        this.bUO = null;
      }
      if (this.cdT != null)
      {
        this.cdT.setVisibility(8);
        this.cdT.setCachedImage(null);
      }
      if ((this.cdO.filename == null) || (!new File(this.cdO.filename).exists())) {
        break label178;
      }
      if ((Build.VERSION.SDK_INT >= 10) && (this.cdS != null))
      {
        this.cdS.setVisibility(0);
        this.cdS.setOrientation(-1);
        this.cdS.setMinimumDpi(40);
        this.cdS.setBackgroundColor(Integer.MIN_VALUE);
        this.cdS.setImage(a.aH(this.cdO.filename));
        this.cdS.setOnImageEventListener(this);
      }
    }
    else
    {
      return;
    }
    Ds();
    return;
    label178:
    com.vent.d.c.a(this);
    com.vent.d.c.d(getActivity(), 2131689572, 0);
  }
  
  public final void b(Exception paramException)
  {
    Ds();
  }
  
  public final void c(Exception paramException)
  {
    Ds();
  }
  
  public final void d(Exception paramException)
  {
    Ds();
  }
  
  public final void e(ae.c paramc)
  {
    if (this.cdO != paramc) {
      Dr();
    }
    this.cdO = paramc;
  }
  
  public final void ky() {}
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    com.vent.d.c.a(this);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    X(2131755195);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2131427425, paramViewGroup, false);
    this.cdS = ((SubsamplingScaleImageView)paramLayoutInflater.findViewById(2131296531));
    this.cdS.setVisibility(8);
    this.cdS.setOnClickListener(this);
    this.cdT = ((CachedImageView)paramLayoutInflater.findViewById(2131296512));
    this.cdT.setOnClickListener(this);
    return paramLayoutInflater;
  }
  
  public final void onDestroyView()
  {
    this.cdS = null;
    this.cdT = null;
    super.onDestroyView();
  }
  
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    Dq();
    com.vent.d.c.a(this.bUO);
    this.bUO = null;
    super.onDismiss(paramDialogInterface);
  }
  
  public final void onResume()
  {
    super.onResume();
    Object localObject;
    if (this.cdO == null)
    {
      this.bUO = com.vent.d.c.v(getActivity(), 2131689643);
      if (this.bUO != null)
      {
        this.bUO.setCancelable(true);
        this.bUO.setOnDismissListener(new DialogInterface.OnDismissListener()
        {
          public final void onDismiss(DialogInterface paramAnonymousDialogInterface)
          {
            com.vent.d.c.a(af.this);
          }
        });
      }
      localObject = getArguments();
      if (localObject != null) {
        break label163;
      }
      localObject = null;
      String str = com.vent.d.c.j((String)localObject, MyApplication.cgm);
      int j = ae.a(getContext(), str, MyApplication.cgm, MyApplication.cgm, this.cdT);
      int i = j;
      if (j == 0)
      {
        str = com.vent.d.c.j((String)localObject, MyApplication.cgk);
        i = ae.a(getContext(), str, MyApplication.cgk, MyApplication.cgk, this.cdT);
      }
      if (this.cdT != null)
      {
        if (i != 2) {
          break label173;
        }
        this.cdT.setVisibility(0);
      }
    }
    for (;;)
    {
      ae.a(getContext(), (String)localObject, 0, 0, true, this);
      return;
      label163:
      localObject = ((Bundle)localObject).getString("s");
      break;
      label173:
      this.cdT.setCachedImage(null);
      this.cdT.setVisibility(8);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */