package com.layer.sdk.internal.lsdke.lsdkb.lsdkb;

import android.content.Context;
import com.layer.sdk.internal.lsdke.lsdkb.lsdka.b;
import java.io.InputStream;

public class c
  extends d
{
  private final Context a;
  
  public c(Context paramContext, String paramString)
  {
    super(paramString);
    this.a = paramContext;
    if (!b.a(this.a, paramString)) {
      throw new IllegalArgumentException("Could not find migration path: '" + paramString + "'");
    }
  }
  
  public InputStream c()
  {
    return b.b(this.a, a());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/lsdkb/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */