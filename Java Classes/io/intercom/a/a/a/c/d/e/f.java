package io.intercom.a.a.a.c.d.e;

import android.content.Context;
import android.graphics.Bitmap;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.d.a.d;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.i.h;
import java.security.MessageDigest;

public final class f
  implements m<c>
{
  private final m<Bitmap> cNZ;
  
  public f(m<Bitmap> paramm)
  {
    this.cNZ = ((m)h.checkNotNull(paramm, "Argument must not be null"));
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof f))
    {
      paramObject = (f)paramObject;
      return this.cNZ.equals(((f)paramObject).cNZ);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.cNZ.hashCode();
  }
  
  public final u<c> transform(Context paramContext, u<c> paramu, int paramInt1, int paramInt2)
  {
    c localc = (c)paramu.get();
    Object localObject = io.intercom.a.a.a.c.bY(paramContext).cFr;
    localObject = new d(localc.Jj(), (e)localObject);
    paramContext = this.cNZ.transform(paramContext, (u)localObject, paramInt1, paramInt2);
    if (!localObject.equals(paramContext)) {
      ((u)localObject).recycle();
    }
    paramContext = (Bitmap)paramContext.get();
    localObject = this.cNZ;
    localc.cOy.cOF.a((m)localObject, paramContext);
    return paramu;
  }
  
  public final void updateDiskCacheKey(MessageDigest paramMessageDigest)
  {
    this.cNZ.updateDiskCacheKey(paramMessageDigest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */