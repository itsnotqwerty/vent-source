package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.SwitchCompat;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.layer.sdk.LayerClient;
import com.vent.a.h;
import com.vent.d.c;
import io.intercom.android.sdk.Intercom;

public final class ActSettingsAdvanced
  extends a
  implements View.OnClickListener, SeekBar.OnSeekBarChangeListener
{
  private TextView bYf;
  private TextView bYg;
  private h bYh;
  private SeekBar bYi;
  private SeekBar bYj;
  
  private void Ch()
  {
    boolean bool = MyApplication.br(this);
    TextView localTextView = this.bYf;
    if (this.bYh != null)
    {
      i = this.bYh.bo(bool);
      localTextView.setTextColor(i);
      localTextView = this.bYf;
      if (this.bYh == null) {
        break label89;
      }
      i = this.bYh.bm(bool);
      label52:
      localTextView.setBackgroundColor(i);
      localTextView = this.bYg;
      if (this.bYh == null) {
        break label95;
      }
    }
    label89:
    label95:
    for (int i = this.bYh.bm(bool);; i = -16777216)
    {
      localTextView.setTextColor(i);
      return;
      i = -1;
      break;
      i = -8355712;
      break label52;
    }
  }
  
  public static void l(Activity paramActivity)
  {
    paramActivity.startActivityForResult(new Intent(paramActivity, ActSettingsAdvanced.class), 30);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131296587: 
      do
      {
        return;
      } while (!MyApplication.cgC);
      try
      {
        Intercom.client().displayConversationsList();
        return;
      }
      catch (Exception paramView)
      {
        paramView.printStackTrace();
        return;
      }
    case 2131296681: 
      LayerClient.sendLogs(((MyApplication)getApplication()).DY().cgZ, this);
      return;
    case 2131296481: 
      bb.cil = 0;
      bb.cim = 0;
      this.bYi.setProgress(bb.cil + 255);
      this.bYj.setProgress(bb.cim + 255);
      Ch();
      return;
    }
    paramView = (MyApplication)getApplication();
    paramView.DX();
    paramView.DW();
    c.a(this, "IAB restarted", -1);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427385);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131689751);
    ((SwitchCompat)findViewById(2131296456)).setChecked(bb.cib);
    ((SwitchCompat)findViewById(2131296462)).setChecked(bb.cik);
    findViewById(2131296482).setVisibility(8);
    findViewById(2131296680).setVisibility(8);
    findViewById(2131296463).setVisibility(8);
    findViewById(2131296560).setVisibility(8);
    findViewById(2131296310).setVisibility(8);
    findViewById(2131296311).setVisibility(8);
    findViewById(2131296829).setVisibility(8);
    findViewById(2131296680).setVisibility(8);
    findViewById(2131296681).setVisibility(8);
    findViewById(2131296681).setOnClickListener(this);
    findViewById(2131296587).setVisibility(8);
    findViewById(2131296587).setOnClickListener(this);
    findViewById(2131296588).setVisibility(8);
    findViewById(2131296529).setVisibility(8);
    if (MyApplication.cgy) {
      findViewById(2131296839).setOnClickListener(this);
    }
    for (;;)
    {
      findViewById(2131296714).setVisibility(8);
      findViewById(2131296713).setVisibility(8);
      return;
      findViewById(2131296839).setVisibility(8);
    }
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
  
  protected final void onPause()
  {
    bb.cia = ((SwitchCompat)findViewById(2131296560)).isChecked();
    bb.cib = ((SwitchCompat)findViewById(2131296456)).isChecked();
    bb.cij = ((SwitchCompat)findViewById(2131296463)).isChecked();
    bb.cid = ((SwitchCompat)findViewById(2131296310)).isChecked();
    bb.cie = ((SwitchCompat)findViewById(2131296311)).isChecked();
    bb.cii = ((SwitchCompat)findViewById(2131296680)).isChecked();
    bb.cik = ((SwitchCompat)findViewById(2131296462)).isChecked();
    bb.EB();
    super.onPause();
  }
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    switch (paramSeekBar.getId())
    {
    }
    for (;;)
    {
      Ch();
      return;
      bb.cil = paramInt - 255;
      continue;
      bb.cim = paramInt - 255;
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, ax.cfQ);
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActSettingsAdvanced.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */