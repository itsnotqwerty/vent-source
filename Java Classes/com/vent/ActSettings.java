package com.vent;

import android.app.Activity;
import android.app.UiModeManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v7.app.c.a;
import android.support.v7.app.f;
import android.support.v7.widget.SwitchCompat;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import com.vent.d.c;
import com.vent.d.e;

public final class ActSettings
  extends a
  implements View.OnClickListener
{
  private static final String[] bXR = { "1 second", "2 seconds", "3 seconds", "5 seconds", "10 seconds", "15 seconds", "30 seconds", "1 minute", "2 minutes", "3 minutes", "5 minutes", "10 minutes" };
  private static final long[] bXS = { 1000L, 2000L, 3000L, 5000L, 10000L, 15000L, 30000L, 60000L, 120000L, 180000L, 300000L, 600000L };
  private static final String[] bXT = { "Auto", "On", "Off" };
  static final int[] bXU = { 0, 2, 1 };
  private static final String[] bXV = { "Normal", "System" };
  private static final int[] bXW = { 0, 1 };
  private static final String[] bXX = { "Off", "On", "Emotions" };
  private static final int[] bXY = { 1, 2, 3 };
  private static final String[] bYc = { "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION" };
  boolean bXZ;
  private boolean bYa;
  private final boolean[] bYb = new boolean[2];
  
  public static void a(Activity paramActivity, i parami)
  {
    Intent localIntent = new Intent(paramActivity, ActSettings.class);
    if (parami != null)
    {
      parami.startActivityForResult(localIntent, 28);
      return;
    }
    paramActivity.startActivityForResult(localIntent, 28);
  }
  
  private void er(int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return;
    } while (this.bYb[0] != 0);
    ep(1);
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    boolean bool2 = bb.chT;
    int i = bb.cif;
    boolean bool3 = bb.ciz;
    bb.chT = ((SwitchCompat)findViewById(2131296978)).isChecked();
    if (Build.VERSION.SDK_INT < 26)
    {
      if (((SwitchCompat)findViewById(2131296899)).isChecked()) {
        break label437;
      }
      bool1 = true;
      bb.chU = bool1;
      if (((SwitchCompat)findViewById(2131296900)).isChecked()) {
        break label442;
      }
      bool1 = true;
      label75:
      bb.chV = bool1;
      if (((SwitchCompat)findViewById(2131296901)).isChecked()) {
        break label447;
      }
    }
    label437:
    label442:
    label447:
    for (boolean bool1 = true;; bool1 = false)
    {
      bb.chW = bool1;
      bb.chX = ((SwitchCompat)findViewById(2131296990)).isChecked();
      bb.chY = ((SwitchCompat)findViewById(2131296991)).isChecked();
      bb.chZ = ((SwitchCompat)findViewById(2131296754)).isChecked();
      bb.cic = ((SwitchCompat)findViewById(2131296454)).isChecked();
      bb.pin = ((EditText)findViewById(2131296801)).getText().toString().trim();
      bb.cih = bXS[((int)((Spinner)findViewById(2131296804)).getSelectedItemId())];
      bb.civ = bXU[((int)((Spinner)findViewById(2131296750)).getSelectedItemId())];
      bb.ciw = bXW[((int)((Spinner)findViewById(2131296438)).getSelectedItemId())];
      bb.ciz = ((SwitchCompat)findViewById(2131296411)).isChecked();
      bb.cif = bXY[((int)((Spinner)findViewById(2131296769)).getSelectedItemId())];
      bb.EB();
      if ((i != bb.cif) || (bool2 != bb.chT))
      {
        e.cnh = false;
        e.cnj = 0;
        e.bM(this);
        e.u(this);
        this.bYa = true;
        bb.ciS = 0L;
      }
      if ((bool3 != bb.ciz) || (i != bb.cif))
      {
        bb.Eu();
        this.bYa = true;
        bb.ciS = 0L;
      }
      Object localObject = (UiModeManager)getSystemService("uimode");
      if (bb.civ != ((UiModeManager)localObject).getNightMode()) {
        this.bYa = false;
      }
      f.aO(bb.civ);
      ((UiModeManager)localObject).setNightMode(bb.civ);
      MyApplication.cgD = null;
      localObject = new Intent();
      ((Intent)localObject).putExtra("dorecreate", this.bYa);
      ((Intent)localObject).putExtra("backLongPress", paramBoolean);
      setResult(-1, (Intent)localObject);
      finish();
      return true;
      bool1 = false;
      break;
      bool1 = false;
      break label75;
    }
  }
  
  final void ep(final int paramInt)
  {
    if (android.support.v4.content.a.c(this, bYc[paramInt]) == 0)
    {
      this.bYb[paramInt] = true;
      er(paramInt);
    }
    do
    {
      return;
      if (!android.support.v4.app.a.a(this, bYc[paramInt])) {
        break;
      }
    } while (!c.bF(this));
    new c.a(this).setMessage(2131690096).setNegativeButton(17039360, null).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ActSettings.this.eq(paramInt);
      }
    }).show();
    return;
    eq(paramInt);
  }
  
  final void eq(int paramInt)
  {
    android.support.v4.app.a.a(this, new String[] { bYc[paramInt] }, paramInt);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131296888: 
      ActSettingsAdvanced.l(this);
      return;
    }
    try
    {
      paramView = new Intent();
      if (Build.VERSION.SDK_INT > 25)
      {
        paramView.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        paramView.putExtra("android.provider.extra.APP_PACKAGE", getPackageName());
      }
      for (;;)
      {
        startActivity(paramView);
        return;
        if (Build.VERSION.SDK_INT >= 21)
        {
          paramView.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
          paramView.putExtra("app_package", getPackageName());
          paramView.putExtra("app_uid", getApplicationInfo().uid);
        }
        else
        {
          paramView.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
          paramView.addCategory("android.intent.category.DEFAULT");
          paramView.setData(Uri.parse("package:" + getPackageName()));
        }
      }
      return;
    }
    catch (Exception paramView) {}
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    boolean bool2 = true;
    super.onCreate(paramBundle);
    setContentView(2131427384);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131689750);
    if (paramBundle != null) {
      this.bYa = paramBundle.getBoolean("dorecreate", false);
    }
    ((SwitchCompat)findViewById(2131296978)).setChecked(bb.chT);
    boolean bool1;
    if (Build.VERSION.SDK_INT < 26)
    {
      paramBundle = (SwitchCompat)findViewById(2131296899);
      if (!bb.chU)
      {
        bool1 = true;
        paramBundle.setChecked(bool1);
        paramBundle = (SwitchCompat)findViewById(2131296900);
        if (bb.chV) {
          break label432;
        }
        bool1 = true;
        label116:
        paramBundle.setChecked(bool1);
        paramBundle = (SwitchCompat)findViewById(2131296901);
        if (bb.chW) {
          break label438;
        }
        bool1 = bool2;
        label142:
        paramBundle.setChecked(bool1);
        ((SwitchCompat)findViewById(2131296990)).setChecked(bb.chX);
        ((SwitchCompat)findViewById(2131296991)).setChecked(bb.chY);
        findViewById(2131296762).setVisibility(8);
        label190:
        ((SwitchCompat)findViewById(2131296754)).setChecked(bb.chZ);
        ((SwitchCompat)findViewById(2131296454)).setChecked(bb.cic);
        ((SwitchCompat)findViewById(2131296411)).setChecked(bb.ciz);
        paramBundle = findViewById(2131296888);
        if (!bb.chS) {
          break label470;
        }
      }
    }
    int j;
    label432:
    label438:
    label470:
    for (int i = 0;; i = 8)
    {
      paramBundle.setVisibility(i);
      findViewById(2131296888).setOnClickListener(this);
      paramBundle = (EditText)findViewById(2131296801);
      paramBundle.setText(bb.pin);
      if (Build.VERSION.SDK_INT < 11)
      {
        paramBundle.setInputType(2);
        paramBundle.setTransformationMethod(PasswordTransformationMethod.getInstance());
      }
      if (bb.pin != null) {
        paramBundle.setSelection(bb.pin.length(), bb.pin.length());
      }
      paramBundle = (Spinner)findViewById(2131296804);
      localArrayAdapter = new ArrayAdapter(this, 2131427565, bXR);
      localArrayAdapter.setDropDownViewResource(2131427565);
      paramBundle.setAdapter(localArrayAdapter);
      long l1 = Long.MAX_VALUE;
      i = 0;
      j = 0;
      while (i < bXS.length)
      {
        long l3 = Math.abs(bXS[i] - bb.cih);
        long l2 = l1;
        if (l3 < l1)
        {
          l2 = l3;
          j = i;
        }
        i += 1;
        l1 = l2;
      }
      bool1 = false;
      break;
      bool1 = false;
      break label116;
      bool1 = false;
      break label142;
      findViewById(2131296761).setVisibility(8);
      findViewById(2131296762).setOnClickListener(this);
      break label190;
    }
    paramBundle.setSelection(j);
    paramBundle = (Spinner)findViewById(2131296750);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 2131427565, bXT);
    localArrayAdapter.setDropDownViewResource(2131427565);
    paramBundle.setAdapter(localArrayAdapter);
    i = 0;
    if (i < bXU.length) {
      if (bXU[i] != bb.civ) {}
    }
    for (;;)
    {
      paramBundle.setSelection(i);
      paramBundle.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
      {
        public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          if (!ActSettings.this.bXZ) {
            ActSettings.this.bXZ = true;
          }
          while (ActSettings.bXU[paramAnonymousInt] != 0) {
            return;
          }
          ActSettings.this.ep(0);
        }
        
        public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
      });
      paramBundle = (Spinner)findViewById(2131296438);
      localArrayAdapter = new ArrayAdapter(this, 2131427565, bXV);
      localArrayAdapter.setDropDownViewResource(2131427565);
      paramBundle.setAdapter(localArrayAdapter);
      i = 0;
      label601:
      if (i < bXW.length) {
        if (bXW[i] != bb.ciw) {}
      }
      for (;;)
      {
        paramBundle.setSelection(i);
        paramBundle = (Spinner)findViewById(2131296769);
        localArrayAdapter = new ArrayAdapter(this, 2131427565, bXX);
        localArrayAdapter.setDropDownViewResource(2131427565);
        paramBundle.setAdapter(localArrayAdapter);
        i = 0;
        label667:
        if (i < bXY.length) {
          if (bXY[i] != bb.cif) {}
        }
        for (;;)
        {
          paramBundle.setSelection(i);
          return;
          i += 1;
          break;
          i += 1;
          break label601;
          i += 1;
          break label667;
          i = 0;
        }
        i = 0;
      }
      i = 0;
    }
  }
  
  public final void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if ((paramInt >= 0) && (paramInt < this.bYb.length))
    {
      if ((paramArrayOfInt == null) || (paramArrayOfInt.length <= 0) || (paramArrayOfInt[0] != 0)) {
        break label41;
      }
      this.bYb[paramInt] = true;
    }
    for (;;)
    {
      er(paramInt);
      return;
      label41:
      this.bYb[paramInt] = false;
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "Settings");
  }
  
  protected final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("dorecreate", this.bYa);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActSettings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */