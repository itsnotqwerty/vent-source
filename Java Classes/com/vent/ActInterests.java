package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.n;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import com.vent.a.b;
import com.vent.a.m;
import com.vent.a.p;
import com.vent.d.c;
import com.vent.d.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class ActInterests
  extends a
  implements View.OnClickListener
{
  public static void a(Activity paramActivity, HashSet<m> paramHashSet, HashMap<m, p> paramHashMap, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    Intent localIntent = new Intent(paramActivity, ActInterests.class);
    d.a(localIntent, "interest_ids", paramHashSet);
    d.a(localIntent, "interests", paramHashMap);
    localIntent.putExtra("isNew", paramBoolean);
    localIntent.putExtra("hdrString", paramInt1);
    localIntent.putExtra("minInterest", paramInt2);
    localIntent.putExtra("maxInterest", paramInt3);
    paramActivity.startActivityForResult(localIntent, 40);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    ((am)getSupportFragmentManager().Y(2131296527)).By();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427372);
    paramBundle = (Toolbar)findViewById(2131296949);
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    HashSet localHashSet = d.b(getIntent(), "interest_ids");
    Object localObject = getSupportActionBar();
    if (c.i(localHashSet)) {}
    for (int i = 2131689513;; i = 2131689509)
    {
      ((android.support.v7.app.a)localObject).setTitle(i);
      localObject = (FrgInterests)getSupportFragmentManager().Y(2131296527);
      ((FrgInterests)localObject).a(localHashSet, getIntent().getIntExtra("hdrString", 0), getIntent().getIntExtra("minInterest", 0), getIntent().getIntExtra("maxInterest", 3));
      ((FrgInterests)localObject).f(true, false);
      paramBundle.setOnClickListener(this);
      return;
    }
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    MenuInflater localMenuInflater = getMenuInflater();
    if (getIntent().getBooleanExtra("isNew", false)) {}
    for (int i = 2131492875;; i = 2131492880)
    {
      localMenuInflater.inflate(i, paramMenu);
      return super.onCreateOptionsMenu(paramMenu);
    }
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    paramMenuItem = (FrgInterests)getSupportFragmentManager().Y(2131296527);
    if (paramMenuItem.ceB == null) {}
    for (int i = 0; i < ((k)paramMenuItem.ceE).caV; i = paramMenuItem.ceB.size())
    {
      c.a(this, getString(2131690081, new Object[] { Integer.valueOf(((k)paramMenuItem.ceE).caV), Integer.valueOf(((k)paramMenuItem.ceE).caW) }), -1);
      return true;
    }
    HashSet localHashSet = paramMenuItem.ceB;
    HashMap localHashMap1 = d.a(getIntent(), "interest");
    ArrayList localArrayList;
    label160:
    HashMap localHashMap2;
    label176:
    m localm;
    Object localObject;
    if (paramMenuItem.ceE == null)
    {
      localArrayList = null;
      localHashMap2 = new HashMap();
      Iterator localIterator = localHashSet.iterator();
      if (!localIterator.hasNext()) {
        break label297;
      }
      localm = (m)localIterator.next();
      if (localArrayList == null) {
        break label334;
      }
      localObject = localArrayList.iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        paramMenuItem = (p)((Iterator)localObject).next();
      } while (!b.a(localm, paramMenuItem));
    }
    for (;;)
    {
      localObject = paramMenuItem;
      if (paramMenuItem == null)
      {
        localObject = paramMenuItem;
        if (localHashMap1 != null) {
          localObject = (p)localHashMap1.get(localm);
        }
      }
      if (localObject == null) {
        break label176;
      }
      localHashMap2.put(localm, localObject);
      break label176;
      localArrayList = ((k)paramMenuItem.ceE).cbg;
      break label160;
      label297:
      paramMenuItem = new Intent();
      d.a(paramMenuItem, "interests", localHashMap2);
      d.a(paramMenuItem, "interest_ids", localHashSet);
      setResult(-1, paramMenuItem);
      finish();
      break;
      label334:
      paramMenuItem = null;
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, null);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActInterests.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */