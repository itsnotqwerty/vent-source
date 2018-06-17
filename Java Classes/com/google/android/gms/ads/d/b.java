package com.google.android.gms.ads.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.pz;

public final class b
  extends ViewGroup
{
  private final pz azo;
  
  public final a getAdListener()
  {
    return this.azo.baA;
  }
  
  public final d getAdSize()
  {
    return this.azo.getAdSize();
  }
  
  public final String getAdUnitId()
  {
    return this.azo.getAdUnitId();
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = getChildAt(0);
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      int i = localView.getMeasuredWidth();
      int j = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1 - i) / 2;
      paramInt2 = (paramInt4 - paramInt2 - j) / 2;
      localView.layout(paramInt1, paramInt2, i + paramInt1, j + paramInt2);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    Object localObject1 = getChildAt(0);
    int j;
    int i;
    if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8))
    {
      measureChild((View)localObject1, paramInt1, paramInt2);
      j = ((View)localObject1).getMeasuredWidth();
      i = ((View)localObject1).getMeasuredHeight();
    }
    for (;;)
    {
      j = Math.max(j, getSuggestedMinimumWidth());
      i = Math.max(i, getSuggestedMinimumHeight());
      setMeasuredDimension(View.resolveSize(j, paramInt1), View.resolveSize(i, paramInt2));
      return;
      localObject1 = null;
      try
      {
        localObject2 = getAdSize();
        localObject1 = localObject2;
      }
      catch (NullPointerException localNullPointerException)
      {
        for (;;)
        {
          Object localObject2;
          af.c("Unable to retrieve ad size.", localNullPointerException);
        }
        i = 0;
        j = 0;
      }
      if (localObject1 != null)
      {
        localObject2 = getContext();
        j = ((d)localObject1).q((Context)localObject2);
        i = ((d)localObject1).p((Context)localObject2);
      }
    }
  }
  
  public final void setAdListener(a parama)
  {
    this.azo.setAdListener(parama);
  }
  
  public final void setAdSize(d paramd)
  {
    this.azo.setAdSizes(new d[] { paramd });
  }
  
  public final void setAdUnitId(String paramString)
  {
    this.azo.setAdUnitId(paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/ads/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */