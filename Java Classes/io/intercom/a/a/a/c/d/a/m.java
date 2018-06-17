package io.intercom.a.a.a.c.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.u;
import java.security.MessageDigest;

public final class m
  implements io.intercom.a.a.a.c.m<Drawable>
{
  private final io.intercom.a.a.a.c.m<Bitmap> cNZ;
  private final boolean cOa;
  
  public m(io.intercom.a.a.a.c.m<Bitmap> paramm, boolean paramBoolean)
  {
    this.cNZ = paramm;
    this.cOa = paramBoolean;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof m))
    {
      paramObject = (m)paramObject;
      return this.cNZ.equals(((m)paramObject).cNZ);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.cNZ.hashCode();
  }
  
  public final u<Drawable> transform(Context paramContext, u<Drawable> paramu, int paramInt1, int paramInt2)
  {
    Object localObject2 = c.bY(paramContext).cFr;
    Object localObject1 = (Drawable)paramu.get();
    localObject2 = l.a((e)localObject2, (Drawable)localObject1, paramInt1, paramInt2);
    if (localObject2 == null)
    {
      if (this.cOa) {
        throw new IllegalArgumentException("Unable to convert " + localObject1 + " to a Bitmap");
      }
    }
    else
    {
      localObject1 = this.cNZ.transform(paramContext, (u)localObject2, paramInt1, paramInt2);
      if (!localObject1.equals(localObject2)) {
        break label110;
      }
      ((u)localObject1).recycle();
    }
    return paramu;
    label110:
    return p.a(paramContext.getResources(), (u)localObject1);
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    this.cNZ.updateDiskCacheKey(paramMessageDigest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */