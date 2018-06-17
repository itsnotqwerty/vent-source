package io.intercom.a.a.a.c.d.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.Gravity;
import io.intercom.a.a.a.b.a;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.i.h;
import java.nio.ByteBuffer;
import java.util.List;

public class c
  extends Drawable
  implements Animatable, g.b
{
  private int cHi;
  boolean cKL;
  private boolean cOA;
  private boolean cOB = true;
  private int cOC = -1;
  private boolean cOD;
  private Rect cOE;
  final a cOy;
  private boolean cOz;
  private Paint paint;
  
  public c(Context paramContext, a parama, m<Bitmap> paramm, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    this(new a(new g(io.intercom.a.a.a.c.bY(paramContext), parama, paramInt1, paramInt2, paramm, paramBitmap)));
  }
  
  c(a parama)
  {
    this.cOy = ((a)h.checkNotNull(parama, "Argument must not be null"));
  }
  
  private void Jk()
  {
    if (!this.cKL) {}
    g localg;
    for (boolean bool = true;; bool = false)
    {
      h.b(bool, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
      if (this.cOy.cOF.getFrameCount() == 1) {
        break label140;
      }
      if (this.cOz) {
        return;
      }
      this.cOz = true;
      localg = this.cOy.cOF;
      if (!localg.cOM) {
        break;
      }
      throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }
    bool = localg.cOH.isEmpty();
    if (localg.cOH.contains(this)) {
      throw new IllegalStateException("Cannot subscribe twice in a row");
    }
    localg.cOH.add(this);
    if ((bool) && (!localg.cOz))
    {
      localg.cOz = true;
      localg.cOM = false;
      localg.Jp();
    }
    label140:
    invalidateSelf();
  }
  
  private void Jl()
  {
    this.cOz = false;
    g localg = this.cOy.cOF;
    localg.cOH.remove(this);
    if (localg.cOH.isEmpty()) {
      localg.cOz = false;
    }
  }
  
  private Rect Jm()
  {
    if (this.cOE == null) {
      this.cOE = new Rect();
    }
    return this.cOE;
  }
  
  private Paint getPaint()
  {
    if (this.paint == null) {
      this.paint = new Paint(2);
    }
    return this.paint;
  }
  
  public final Bitmap Jj()
  {
    return this.cOy.cOF.cOO;
  }
  
  public final void Jn()
  {
    for (Object localObject = getCallback(); (localObject instanceof Drawable); localObject = ((Drawable)localObject).getCallback()) {}
    if (localObject == null)
    {
      stop();
      invalidateSelf();
      return;
    }
    invalidateSelf();
    localObject = this.cOy.cOF;
    if (((g)localObject).cOL != null) {}
    for (int i = ((g)localObject).cOL.index;; i = -1)
    {
      if (i == this.cOy.cOF.getFrameCount() - 1) {
        this.cHi += 1;
      }
      if ((this.cOC == -1) || (this.cHi < this.cOC)) {
        break;
      }
      stop();
      return;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.cKL) {
      return;
    }
    if (this.cOD)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), Jm());
      this.cOD = false;
    }
    paramCanvas.drawBitmap(this.cOy.cOF.Jo(), null, Jm(), getPaint());
  }
  
  public final ByteBuffer getBuffer()
  {
    return this.cOy.cOF.cOG.getData().asReadOnlyBuffer();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.cOy;
  }
  
  public int getIntrinsicHeight()
  {
    return this.cOy.cOF.Jo().getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return this.cOy.cOF.Jo().getWidth();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public boolean isRunning()
  {
    return this.cOz;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.cOD = true;
  }
  
  public void setAlpha(int paramInt)
  {
    getPaint().setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    getPaint().setColorFilter(paramColorFilter);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool;
    if (!this.cKL)
    {
      bool = true;
      h.b(bool, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
      this.cOB = paramBoolean1;
      if (paramBoolean1) {
        break label40;
      }
      Jl();
    }
    for (;;)
    {
      return super.setVisible(paramBoolean1, paramBoolean2);
      bool = false;
      break;
      label40:
      if (this.cOA) {
        Jk();
      }
    }
  }
  
  public void start()
  {
    this.cOA = true;
    this.cHi = 0;
    if (this.cOB) {
      Jk();
    }
  }
  
  public void stop()
  {
    this.cOA = false;
    Jl();
  }
  
  static final class a
    extends Drawable.ConstantState
  {
    final g cOF;
    
    a(g paramg)
    {
      this.cOF = paramg;
    }
    
    public final int getChangingConfigurations()
    {
      return 0;
    }
    
    public final Drawable newDrawable()
    {
      return new c(this);
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      return newDrawable();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */