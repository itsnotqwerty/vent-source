package com.vent;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.support.v7.app.c.a;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.vent.a.b;
import com.vent.a.g;
import com.vent.a.h;
import com.vent.a.m;
import com.vent.a.o;
import com.vent.a.x;
import com.vent.b.a.a;
import com.vent.d.c;
import com.vent.d.c.b;
import com.vent.d.e;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ActStoreEmotCat
  extends a
  implements View.OnClickListener, View.OnLongClickListener
{
  private h bVH;
  private x bVI;
  
  public static void a(a parama, h paramh, x paramx)
  {
    if (bb.ciO == null) {
      return;
    }
    Intent localIntent = new Intent(parama, ActStoreEmotCat.class);
    localIntent.putExtra("ec", paramh);
    localIntent.putExtra("user_gift", paramx);
    parama.startActivityForResult(localIntent, 43);
  }
  
  protected final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    paramIntent = new Intent();
    paramIntent.putExtra("closeStore", true);
    setResult(-1, paramIntent);
    finish();
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      if (((paramView instanceof AppCompatTextView)) && ((paramView.getTag() instanceof g))) {
        ActGift.a(this, this.bVH, this.bVI);
      }
    case 2131296528: 
    case 2131296539: 
    case 2131296700: 
    case 2131296349: 
      do
      {
        return;
        ActGift.a(this, this.bVH, this.bVI);
        return;
      } while (!this.bVH.ET());
      ((MyApplication)getApplication()).cgB.a(this, this.bVH.cjZ, null, new a.a()
      {
        public final void aQ(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            if (c.bF(ActStoreEmotCat.this)) {
              break label22;
            }
            ActStoreEmotCat.this.finish();
          }
          label22:
          while (10 - com.vent.b.a.Fr() <= 0) {
            return;
          }
          new c.a(ActStoreEmotCat.this).setMessage(ActStoreEmotCat.this.getString(2131690093, new Object[] { Integer.valueOf(10), Integer.valueOf(10 - com.vent.b.a.Fr()) })).setPositiveButton(17039370, null).setOnDismissListener(new DialogInterface.OnDismissListener()
          {
            public final void onDismiss(DialogInterface paramAnonymous2DialogInterface)
            {
              ActStoreEmotCat.this.finish();
            }
          }).show();
        }
      });
      return;
    }
    com.vent.b.a.a(this, new c.b()
    {
      public final void run()
      {
        if (((Boolean)this.cmT).booleanValue()) {
          ActStoreEmotCat.this.finish();
        }
      }
    });
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427388);
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    this.bVH = ((h)getIntent().getParcelableExtra("ec"));
    if (this.bVH == null) {
      finish();
    }
    label226:
    label383:
    label385:
    label565:
    for (;;)
    {
      return;
      this.bVI = ((x)getIntent().getParcelableExtra("user_gift"));
      ((TextView)findViewById(2131296943)).setText(e.s(this.bVH.cjP));
      findViewById(2131296682).setBackgroundColor(this.bVH.bm(false));
      int i = getResources().getDimensionPixelSize(2131165259);
      int j = getResources().getDimensionPixelSize(2131165361);
      Object localObject2 = (LinearLayout)findViewById(2131296700);
      ((LinearLayout)localObject2).removeAllViews();
      if (!TextUtils.isEmpty(this.bVH.ckb)) {
        TextUtils.isEmpty(this.bVH.description);
      }
      Iterator localIterator = this.bVH.cjT.iterator();
      if (localIterator.hasNext())
      {
        paramBundle = (m)localIterator.next();
        AppCompatTextView localAppCompatTextView;
        if (bb.ciP == null)
        {
          paramBundle = null;
          if ((paramBundle == null) || ((!paramBundle.axa) && (!bb.cia))) {
            break label383;
          }
          localAppCompatTextView = new AppCompatTextView(this);
          localAppCompatTextView.setTypeface(e.cmU, 0);
          localAppCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
          localAppCompatTextView.setSingleLine(true);
          localAppCompatTextView.setTextColor(this.bVH.bo(false));
          localAppCompatTextView.setTextSize(0, i);
          localAppCompatTextView.setIncludeFontPadding(false);
          localAppCompatTextView.setPadding(0, j, 0, j);
          if (!paramBundle.axa) {
            break label385;
          }
        }
        for (localObject1 = paramBundle.getName();; localObject1 = paramBundle.getName() + " [*]")
        {
          localAppCompatTextView.setText((CharSequence)localObject1);
          localAppCompatTextView.setTag(paramBundle);
          localAppCompatTextView.setGravity(16);
          localAppCompatTextView.setTag(paramBundle);
          ((LinearLayout)localObject2).addView(localAppCompatTextView);
          break;
          paramBundle = (g)bb.ciP.get(paramBundle);
          break label226;
          break;
        }
      }
      paramBundle = findViewById(2131296349);
      Object localObject1 = findViewById(2131296970);
      localObject2 = findViewById(2131296539);
      if (this.bVI == null)
      {
        ((View)localObject2).setVisibility(8);
        if (this.bVH.EV()) {
          if (TextUtils.isEmpty(this.bVH.cjZ))
          {
            i = 8;
            paramBundle.setVisibility(i);
            paramBundle.setOnClickListener(this);
            ((View)localObject1).setOnClickListener(this);
          }
        }
      }
      for (;;)
      {
        if (this.bVI == null) {
          break label565;
        }
        findViewById(2131296528).setOnClickListener(this);
        findViewById(2131296700).setOnClickListener(this);
        return;
        i = 0;
        break;
        paramBundle.setVisibility(8);
        ((View)localObject1).setVisibility(8);
        continue;
        paramBundle.setVisibility(8);
        ((View)localObject1).setVisibility(8);
        ((View)localObject2).setOnClickListener(this);
      }
    }
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492865, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public final boolean onLongClick(View paramView)
  {
    if ((paramView instanceof AppCompatTextView))
    {
      Object localObject = paramView.getTag();
      if ((localObject instanceof g))
      {
        localObject = (g)localObject;
        paramView = "";
        if (bb.ciR != null)
        {
          List localList = (List)bb.ciR.get(((g)localObject).cjy);
          if (!c.f(localList))
          {
            int i = 0;
            if (i < localList.size())
            {
              o localo = o.e((m)localList.get(i));
              localObject = paramView;
              if (!TextUtils.isEmpty(paramView)) {
                localObject = paramView + " ";
              }
              if (localo == null) {
                paramView = (String)localObject + " [???]";
              }
              for (;;)
              {
                i += 1;
                break;
                if (b.a(localo, o.cky.cjy)) {
                  paramView = (String)localObject + "[*]";
                } else {
                  paramView = (String)localObject + "[" + localo.getName() + "]";
                }
              }
            }
            localObject = paramView;
            if (!TextUtils.isEmpty(paramView)) {
              localObject = paramView + " ";
            }
            paramView = (String)localObject + "[<-]";
            Snackbar.a(findViewById(2131296682), paramView, -1).show();
          }
        }
        return true;
      }
    }
    return super.onLongClick(paramView);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
      return true;
      bb.ciU.remove(this.bVH.cjy);
      bb.EB();
      invalidateOptionsMenu();
      c.d(this, 2131689567, -1);
      continue;
      bb.ciU.add(this.bVH.cjy);
      bb.EB();
      invalidateOptionsMenu();
      c.d(this, 2131689566, -1);
      continue;
      c.x(this, "http://help.vent.co/support/solutions/42000009808");
    }
  }
  
  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool3 = super.onPrepareOptionsMenu(paramMenu);
    boolean bool4 = this.bVH.EV();
    boolean bool5 = bb.ciU.contains(this.bVH.cjy);
    MenuItem localMenuItem = paramMenu.findItem(2131296893);
    if ((this.bVI == null) && (bool5))
    {
      bool1 = true;
      localMenuItem.setVisible(bool1);
      localMenuItem = paramMenu.findItem(2131296561);
      if ((this.bVI != null) || (bool4) || (bool5)) {
        break label150;
      }
    }
    label150:
    for (boolean bool1 = true;; bool1 = false)
    {
      localMenuItem.setVisible(bool1);
      paramMenu = paramMenu.findItem(2131296557);
      if (this.bVI == null)
      {
        bool1 = bool2;
        if (!bool4) {}
      }
      else
      {
        bool1 = true;
      }
      paramMenu.setVisible(bool1);
      return bool3;
      bool1 = false;
      break;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActStoreEmotCat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */