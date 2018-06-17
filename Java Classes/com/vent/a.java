package com.vent;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.app.h;
import android.support.v4.app.n;
import android.support.v7.app.c.a;
import android.support.v7.app.d;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.p;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.TextView;
import com.vent.d.e;
import com.vent.views.b;

@SuppressLint({"Registered"})
public class a
  extends d
  implements View.OnLongClickListener
{
  static int bTB = 1;
  static int bTD;
  private static long bTt;
  private static boolean bTu;
  static int level = 0;
  private int bTA = -1;
  int bTC;
  h bTv = null;
  Intent bTw = null;
  boolean bTx = false;
  public boolean bTy = true;
  boolean bTz;
  private View background;
  final Handler handler = new Handler(Looper.getMainLooper());
  
  static
  {
    bTu = false;
  }
  
  private void Ba()
  {
    int i;
    if (Build.VERSION.SDK_INT >= 14)
    {
      i = getResources().getConfiguration().uiMode & 0x30;
      if (this.bTA != -1) {
        break label36;
      }
      this.bTA = i;
    }
    label36:
    while (this.bTA == i) {
      return;
    }
    this.bTA = i;
    recreate();
  }
  
  private void j(int paramInt, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("backLongPress", paramBoolean);
    setResult(paramInt, localIntent);
    finish();
  }
  
  final void Bb()
  {
    com.vent.d.c.a(this.bTv);
    this.bTv = null;
    bTu = false;
    if (this.background != null) {
      ((ViewGroup)this.background.getParent()).removeView(this.background);
    }
    this.background = null;
  }
  
  public final ba Bc()
  {
    Context localContext = getApplicationContext();
    if ((localContext instanceof MyApplication)) {
      return ((MyApplication)localContext).Bc();
    }
    return null;
  }
  
  final void a(final int paramInt1, final int paramInt2, final Intent paramIntent)
  {
    this.handler.postDelayed(new Runnable()
    {
      public final void run()
      {
        a.this.b(paramInt1, paramInt2, paramIntent);
      }
    }, 50L);
  }
  
  boolean aR(boolean paramBoolean)
  {
    aT(paramBoolean);
    return true;
  }
  
  void aS(boolean paramBoolean)
  {
    j(-1, paramBoolean);
  }
  
  void aT(boolean paramBoolean)
  {
    j(0, paramBoolean);
  }
  
  void b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    MyApplication localMyApplication;
    do
    {
      return;
      localMyApplication = (MyApplication)getApplication();
    } while ((localMyApplication == null) || (localMyApplication.cgB == null) || (localMyApplication.cgB.cll == null) || (!localMyApplication.cgB.cll.c(paramInt1, paramInt2, paramIntent)));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    for (;;)
    {
      if ((paramIntent != null) && (paramIntent.getBooleanExtra("backLongPress", false))) {
        aR(true);
      }
      return;
      a(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onBackPressed()
  {
    if (!aR(false)) {
      super.onBackPressed();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.bTv != null) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        com.vent.d.c.a(this.bTv);
        this.bTv = null;
      }
      super.onConfigurationChanged(paramConfiguration);
      e.u(this);
      s.q(this);
      if (i != 0) {
        this.bTv = a.a(getSupportFragmentManager());
      }
      Ba();
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    this.bTC = bTB;
    if (!(getApplication() instanceof MyApplication))
    {
      super.onCreate(paramBundle);
      com.vent.d.c.h(1, "Android is buggy (1)");
      finish();
      System.exit(0);
    }
    do
    {
      return;
      MyApplication.b(this);
      super.onCreate(paramBundle);
    } while (paramBundle == null);
    this.bTA = paramBundle.getInt("ActBase_nm", -1);
  }
  
  protected void onDestroy()
  {
    if (bTB > 0) {
      bTB -= 1;
    }
    super.onDestroy();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (((paramView instanceof p)) && ((paramView.getParent() instanceof Toolbar)))
    {
      aR(true);
      return true;
    }
    return false;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return aR(false);
  }
  
  protected void onPause()
  {
    if (this.bTv != null)
    {
      com.vent.d.c.a(this.bTv);
      this.bTv = null;
      MyApplication.Ec();
      this.bTw = null;
    }
    for (;;)
    {
      this.bTz = false;
      super.onPause();
      return;
      bTt = SystemClock.elapsedRealtime();
    }
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    Toolbar localToolbar = (Toolbar)findViewById(2131296949);
    int i;
    Object localObject;
    if (localToolbar != null)
    {
      int k = localToolbar.getChildCount();
      paramBundle = null;
      int j = 0;
      i = 0;
      for (;;)
      {
        if (j >= k) {
          break label91;
        }
        localObject = localToolbar.getChildAt(j);
        if (!(localObject instanceof p)) {
          break label88;
        }
        i += 1;
        if (i > 1) {
          break;
        }
        paramBundle = (Bundle)localObject;
        j += 1;
      }
    }
    for (;;)
    {
      if (i == 1) {
        ((View)localObject).setOnLongClickListener(this);
      }
      return;
      label88:
      break;
      label91:
      localObject = paramBundle;
    }
  }
  
  protected void onResume()
  {
    try
    {
      super.onResume();
      this.bTz = true;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void onResumeFragments()
  {
    MyApplication.Eb();
    super.onResumeFragments();
    if (bTu)
    {
      com.vent.d.c.t(this);
      this.bTv = a.a(getSupportFragmentManager());
      return;
    }
    MyApplication.Ec();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("ActBase_nm", this.bTA);
  }
  
  protected void onStart()
  {
    boolean bool2 = false;
    super.onStart();
    this.bTy = false;
    if (!bTu)
    {
      boolean bool1 = bool2;
      if (!this.bTx)
      {
        bool1 = bool2;
        if (bb.ceP != null)
        {
          bool1 = bool2;
          if (bb.pin != null)
          {
            bool1 = bool2;
            if (bb.pin.length() > 0)
            {
              bool1 = bool2;
              if (level == 0)
              {
                bool1 = bool2;
                if (SystemClock.elapsedRealtime() - bTt > bb.cih) {
                  bool1 = true;
                }
              }
            }
          }
        }
      }
      bTu = bool1;
    }
    for (;;)
    {
      level += 1;
      if ((bTu) && (this.background == null))
      {
        View localView = findViewById(2131296682);
        if (localView != null)
        {
          this.background = new View(this);
          if (Build.VERSION.SDK_INT >= 21) {
            this.background.setElevation(100.0F);
          }
          this.background.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
          this.background.setBackgroundColor(-301989888);
          ((ViewGroup)localView).addView(this.background);
        }
      }
      Ba();
      return;
      if (bb.ceP == null) {
        Bb();
      }
    }
  }
  
  protected void onStop()
  {
    level -= 1;
    this.bTy = true;
    super.onStop();
  }
  
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    Window localWindow = getWindow();
    if (localWindow != null) {
      localWindow.setBackgroundDrawable(null);
    }
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    bTD += 1;
    super.startActivityForResult(paramIntent, paramInt);
    bTD -= 1;
  }
  
  public static final class a
    extends h
    implements View.OnClickListener
  {
    static Bundle bTH = null;
    b bTI;
    TextView bTJ;
    String bTK;
    
    static a a(n paramn)
    {
      a locala = new a();
      locala.wM = false;
      if (locala.wP != null) {
        locala.wP.setCancelable(false);
      }
      locala.a(paramn, "");
      return locala;
    }
    
    private void dR(String paramString)
    {
      if (this.bTK.length() < 8)
      {
        this.bTJ.append(" ● ");
        this.bTK += paramString;
      }
    }
    
    public final void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      }
      Intent localIntent;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              new c.a(getActivity()).setTitle(2131689759).setMessage(2131689486).setPositiveButton(17039379, new DialogInterface.OnClickListener()
              {
                public final void onClick(final DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
                {
                  paramAnonymousDialogInterface = com.vent.d.c.v(a.a.this.getActivity(), 2131689761);
                  bb.a(a.a.this.getContext(), false, new Runnable()
                  {
                    public final void run()
                    {
                      com.vent.d.c.a(paramAnonymousDialogInterface);
                      a locala = (a)a.a.this.getActivity();
                      if (locala != null)
                      {
                        locala.Bb();
                        bb.r(locala);
                      }
                    }
                  });
                }
              }).setNegativeButton(17039369, null).create().show();
              return;
              dR("1");
              return;
              dR("2");
              return;
              dR("3");
              return;
              dR("4");
              return;
              dR("5");
              return;
              dR("6");
              return;
              dR("7");
              return;
              dR("8");
              return;
              dR("9");
              return;
              dR("0");
              return;
            } while (TextUtils.isEmpty(this.bTK));
            this.bTK = this.bTK.substring(0, this.bTK.length() - 1);
            paramView = this.bTJ.getText().toString();
            paramView = paramView.substring(0, paramView.length() - 3);
            this.bTJ.setText(paramView);
            return;
          } while (TextUtils.isEmpty(this.bTK));
          if (!TextUtils.equals(this.bTK, bb.pin)) {
            break;
          }
          paramView = (a)getActivity();
          paramView.Bb();
          MyApplication.Ec();
        } while (paramView.bTw == null);
        localIntent = paramView.bTw;
        paramView.bTw = null;
      } while (!(paramView instanceof ActMain));
      ((ActMain)paramView).g(localIntent);
      return;
      this.bTJ.setText("");
      this.bTK = "";
      com.vent.d.c.a(getActivity(), getString(2131689613), 0);
    }
    
    public final void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      X(2131755196);
    }
    
    public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2131427427, paramViewGroup, false);
      this.bTK = "";
      this.bTJ = ((TextView)paramLayoutInflater.findViewById(2131296801));
      this.bTI = new b((d)getActivity(), paramLayoutInflater, bTH);
      paramLayoutInflater.findViewById(2131296898).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296266).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296267).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296268).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296269).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296270).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296271).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296272).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296273).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296274).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296265).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296326).setOnClickListener(this);
      paramLayoutInflater.findViewById(2131296540).setOnClickListener(this);
      return paramLayoutInflater;
    }
    
    public final void onDismiss(DialogInterface paramDialogInterface)
    {
      bTH = this.bTI.FC();
      super.onDismiss(paramDialogInterface);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */