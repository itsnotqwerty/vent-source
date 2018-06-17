package com.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.widget.ImageView;

final class u
  extends BitmapDrawable
{
  private static final Paint bOx = new Paint();
  int alpha = 255;
  boolean animating;
  private final t.d bNf;
  long bOA;
  private final boolean bOy;
  Drawable bOz;
  private final float density;
  
  private u(Context paramContext, Bitmap paramBitmap, Drawable paramDrawable, t.d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext.getResources(), paramBitmap);
    this.bOy = paramBoolean2;
    this.density = paramContext.getResources().getDisplayMetrics().density;
    this.bNf = paramd;
    if ((paramd != t.d.bOn) && (!paramBoolean1)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        this.bOz = paramDrawable;
        this.animating = true;
        this.bOA = SystemClock.uptimeMillis();
      }
      return;
    }
  }
  
  private static Path a(Point paramPoint, int paramInt)
  {
    Point localPoint1 = new Point(paramPoint.x + paramInt, paramPoint.y);
    Point localPoint2 = new Point(paramPoint.x, paramPoint.y + paramInt);
    Path localPath = new Path();
    localPath.moveTo(paramPoint.x, paramPoint.y);
    localPath.lineTo(localPoint1.x, localPoint1.y);
    localPath.lineTo(localPoint2.x, localPoint2.y);
    return localPath;
  }
  
  static void a(ImageView paramImageView, Context paramContext, Bitmap paramBitmap, t.d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    if ((localDrawable instanceof AnimationDrawable)) {
      ((AnimationDrawable)localDrawable).stop();
    }
    paramImageView.setImageDrawable(new u(paramContext, paramBitmap, localDrawable, paramd, paramBoolean1, paramBoolean2));
  }
  
  static void a(ImageView paramImageView, Drawable paramDrawable)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if ((paramImageView.getDrawable() instanceof AnimationDrawable)) {
      ((AnimationDrawable)paramImageView.getDrawable()).start();
    }
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (!this.animating) {
      super.draw(paramCanvas);
    }
    for (;;)
    {
      if (this.bOy)
      {
        bOx.setColor(-1);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(16.0F * this.density)), bOx);
        bOx.setColor(this.bNf.bOq);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(15.0F * this.density)), bOx);
      }
      return;
      float f = (float)(SystemClock.uptimeMillis() - this.bOA) / 200.0F;
      if (f >= 1.0F)
      {
        this.animating = false;
        this.bOz = null;
        super.draw(paramCanvas);
      }
      else
      {
        if (this.bOz != null) {
          this.bOz.draw(paramCanvas);
        }
        super.setAlpha((int)(f * this.alpha));
        super.draw(paramCanvas);
        super.setAlpha(this.alpha);
        if (Build.VERSION.SDK_INT <= 10) {
          invalidateSelf();
        }
      }
    }
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    if (this.bOz != null) {
      this.bOz.setBounds(paramRect);
    }
    super.onBoundsChange(paramRect);
  }
  
  public final void setAlpha(int paramInt)
  {
    this.alpha = paramInt;
    if (this.bOz != null) {
      this.bOz.setAlpha(paramInt);
    }
    super.setAlpha(paramInt);
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.bOz != null) {
      this.bOz.setColorFilter(paramColorFilter);
    }
    super.setColorFilter(paramColorFilter);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */