package com.intercom.composer.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.n;
import android.text.TextUtils;
import com.intercom.composer.g.b;

public abstract class b<T extends c>
{
  private String fragmentTag;
  private final a iconProvider;
  private final String uniqueIdentifier;
  
  protected b(String paramString, a parama)
  {
    this.uniqueIdentifier = paramString;
    this.iconProvider = parama;
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Inputs must have a non-empty unique identifier.");
    }
  }
  
  public abstract T createFragment();
  
  public T findFragment(n paramn)
  {
    return (c)paramn.w(this.fragmentTag);
  }
  
  public int getBackgroundColor()
  {
    return g.b.intercom_composer_white;
  }
  
  public int getBorderColor()
  {
    return g.b.intercom_composer_border;
  }
  
  public Drawable getIconDrawable(Context paramContext)
  {
    return this.iconProvider.getIconDrawable(this.uniqueIdentifier, paramContext);
  }
  
  public String getUniqueIdentifier()
  {
    return this.uniqueIdentifier;
  }
  
  public void setFragmentTag(String paramString)
  {
    this.fragmentTag = paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */