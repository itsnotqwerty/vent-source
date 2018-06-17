package io.intercom.a.a.a.g.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import io.intercom.a.a.a.g.b.d.a;

public abstract class d<Z>
  extends i<ImageView, Z>
  implements d.a
{
  private Animatable cQx;
  
  public d(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  private void aA(Z paramZ)
  {
    az(paramZ);
    aB(paramZ);
  }
  
  private void aB(Z paramZ)
  {
    if ((paramZ instanceof Animatable))
    {
      this.cQx = ((Animatable)paramZ);
      this.cQx.start();
      return;
    }
    this.cQx = null;
  }
  
  public final Drawable JH()
  {
    return ((ImageView)this.view).getDrawable();
  }
  
  protected abstract void az(Z paramZ);
  
  public void onLoadCleared(Drawable paramDrawable)
  {
    super.onLoadCleared(paramDrawable);
    if (this.cQx != null) {
      this.cQx.stop();
    }
    aA(null);
    setDrawable(paramDrawable);
  }
  
  public void onLoadFailed(Drawable paramDrawable)
  {
    super.onLoadFailed(paramDrawable);
    aA(null);
    setDrawable(paramDrawable);
  }
  
  public void onLoadStarted(Drawable paramDrawable)
  {
    super.onLoadStarted(paramDrawable);
    aA(null);
    setDrawable(paramDrawable);
  }
  
  public void onResourceReady(Z paramZ, io.intercom.a.a.a.g.b.d<? super Z> paramd)
  {
    if ((paramd == null) || (!paramd.a(paramZ, this)))
    {
      aA(paramZ);
      return;
    }
    aB(paramZ);
  }
  
  public void onStart()
  {
    if (this.cQx != null) {
      this.cQx.start();
    }
  }
  
  public void onStop()
  {
    if (this.cQx != null) {
      this.cQx.stop();
    }
  }
  
  public final void setDrawable(Drawable paramDrawable)
  {
    ((ImageView)this.view).setImageDrawable(paramDrawable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/g/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */