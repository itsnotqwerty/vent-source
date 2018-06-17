package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.util.DisplayMetrics;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

final class c
  extends ImageView
{
  Animation.AnimationListener In;
  int Io;
  
  c(Context paramContext)
  {
    super(paramContext);
    float f = getContext().getResources().getDisplayMetrics().density;
    int i = (int)(1.75F * f);
    int j = (int)(0.0F * f);
    this.Io = ((int)(3.5F * f));
    if (dZ())
    {
      paramContext = new ShapeDrawable(new OvalShape());
      r.d(this, f * 4.0F);
    }
    for (;;)
    {
      paramContext.getPaint().setColor(-328966);
      r.setBackground(this, paramContext);
      return;
      paramContext = new ShapeDrawable(new a(this.Io));
      setLayerType(1, paramContext.getPaint());
      paramContext.getPaint().setShadowLayer(this.Io, j, i, 503316480);
      i = this.Io;
      setPadding(i, i, i, i);
    }
  }
  
  private static boolean dZ()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public final void onAnimationEnd()
  {
    super.onAnimationEnd();
    if (this.In != null) {
      this.In.onAnimationEnd(getAnimation());
    }
  }
  
  public final void onAnimationStart()
  {
    super.onAnimationStart();
    if (this.In != null) {
      this.In.onAnimationStart(getAnimation());
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!dZ()) {
      setMeasuredDimension(getMeasuredWidth() + this.Io * 2, getMeasuredHeight() + this.Io * 2);
    }
  }
  
  public final void setBackgroundColor(int paramInt)
  {
    if ((getBackground() instanceof ShapeDrawable)) {
      ((ShapeDrawable)getBackground()).getPaint().setColor(paramInt);
    }
  }
  
  private final class a
    extends OvalShape
  {
    private RadialGradient Ip;
    private Paint Iq = new Paint();
    
    a(int paramInt)
    {
      c.this.Io = paramInt;
      aD((int)rect().width());
    }
    
    private void aD(int paramInt)
    {
      float f1 = paramInt / 2;
      float f2 = paramInt / 2;
      float f3 = c.this.Io;
      Shader.TileMode localTileMode = Shader.TileMode.CLAMP;
      this.Ip = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, localTileMode);
      this.Iq.setShader(this.Ip);
    }
    
    public final void draw(Canvas paramCanvas, Paint paramPaint)
    {
      int i = c.this.getWidth();
      int j = c.this.getHeight();
      paramCanvas.drawCircle(i / 2, j / 2, i / 2, this.Iq);
      paramCanvas.drawCircle(i / 2, j / 2, i / 2 - c.this.Io, paramPaint);
    }
    
    protected final void onResize(float paramFloat1, float paramFloat2)
    {
      super.onResize(paramFloat1, paramFloat2);
      aD((int)paramFloat1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */