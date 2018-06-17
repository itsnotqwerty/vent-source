package io.intercom.a.a.a.c.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.k;
import io.intercom.a.a.a.i.h;
import java.io.IOException;

public final class a<DataType>
  implements k<DataType, BitmapDrawable>
{
  private final Resources cNn;
  private final k<DataType, Bitmap> cNy;
  
  public a(Resources paramResources, k<DataType, Bitmap> paramk)
  {
    this.cNn = ((Resources)h.checkNotNull(paramResources, "Argument must not be null"));
    this.cNy = ((k)h.checkNotNull(paramk, "Argument must not be null"));
  }
  
  public final u<BitmapDrawable> a(DataType paramDataType, int paramInt1, int paramInt2, j paramj)
    throws IOException
  {
    paramDataType = this.cNy.a(paramDataType, paramInt1, paramInt2, paramj);
    return p.a(this.cNn, paramDataType);
  }
  
  public final boolean a(DataType paramDataType, j paramj)
    throws IOException
  {
    return this.cNy.a(paramDataType, paramj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */