package io.intercom.a.a.a.c.d.c;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import io.intercom.a.a.a.c.b.q;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.d.e.c;
import io.intercom.a.a.a.i.h;

public abstract class b<T extends Drawable>
  implements q, u<T>
{
  protected final T cOs;
  
  public b(T paramT)
  {
    this.cOs = ((Drawable)h.checkNotNull(paramT, "Argument must not be null"));
  }
  
  public void initialize()
  {
    if ((this.cOs instanceof BitmapDrawable)) {
      ((BitmapDrawable)this.cOs).getBitmap().prepareToDraw();
    }
    while (!(this.cOs instanceof c)) {
      return;
    }
    ((c)this.cOs).Jj().prepareToDraw();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */