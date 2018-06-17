package com.vent;

import android.content.Context;
import android.support.v7.widget.r;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.vent.d.c;

public final class CachedImageView
  extends r
  implements ae.a
{
  public boolean attachedToWindow;
  public String cdM = null;
  private int cdN = 0;
  public ae.c cdO = null;
  public int cdP = 0;
  public int cdQ = 0;
  public Object cdR;
  
  public CachedImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public CachedImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CachedImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void Dn()
  {
    if (this.cdN != 0)
    {
      setImageResource(this.cdN);
      return;
    }
    setImageResource(17170445);
  }
  
  private void Do()
  {
    Dn();
    if (this.cdM != null) {
      ae.a(getContext(), this.cdM, this.cdP, this.cdQ, false, this);
    }
  }
  
  private void Dp()
  {
    if (!isInEditMode()) {
      Dn();
    }
    if (this.cdO != null)
    {
      this.cdO.b(this);
      this.cdO = null;
    }
  }
  
  public final void Di()
  {
    setCachedImage(this.cdO);
  }
  
  public final void aH(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = c.aJ(paramInt1, paramInt2);
    this.cdP = arrayOfInt[0];
    this.cdQ = arrayOfInt[1];
  }
  
  public final void e(ae.c paramc)
  {
    if (this.cdO != paramc) {
      Dp();
    }
    this.cdO = paramc;
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.attachedToWindow = true;
    if ((!isInEditMode()) && (this.cdO == null)) {
      Do();
    }
  }
  
  protected final void onDetachedFromWindow()
  {
    Dp();
    this.attachedToWindow = false;
    super.onDetachedFromWindow();
  }
  
  public final void setCachedImage(ae.c paramc)
  {
    if ((this.cdO != paramc) || (!this.attachedToWindow)) {
      Dp();
    }
    if (paramc == null)
    {
      this.cdM = null;
      if (this.attachedToWindow)
      {
        if (paramc != null) {
          break label76;
        }
        this.cdO = null;
      }
    }
    label76:
    do
    {
      Dn();
      return;
      this.cdM = paramc.imageUrl;
      this.cdP = paramc.cdB;
      this.cdQ = paramc.cdC;
      break;
      if (this.cdO != paramc)
      {
        this.cdO = paramc;
        this.cdO.a(this);
      }
    } while (this.cdO.Dl());
    setImageBitmap(this.cdO.cdG);
  }
  
  public final void setCachedImage(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() == 0) {
        str = null;
      }
    }
    if (!this.attachedToWindow)
    {
      Dp();
      this.cdM = str;
    }
    do
    {
      return;
      if (!TextUtils.equals(this.cdM, str)) {
        break;
      }
    } while (str != null);
    Dn();
    return;
    Dp();
    this.cdM = str;
    Do();
  }
  
  public final void setDefaultImage(int paramInt)
  {
    if (this.cdN == paramInt) {}
    do
    {
      return;
      this.cdN = paramInt;
    } while (this.cdM != null);
    Dn();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/CachedImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */