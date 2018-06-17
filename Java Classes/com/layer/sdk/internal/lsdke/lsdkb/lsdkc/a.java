package com.layer.sdk.internal.lsdke.lsdkb.lsdkc;

import android.content.Context;
import java.io.InputStream;

public class a
  extends b
{
  private final Context a;
  
  public a(Context paramContext, String paramString)
  {
    super(paramString);
    this.a = paramContext;
    if (!com.layer.sdk.internal.lsdke.lsdkb.lsdka.b.a(this.a, paramString)) {
      throw new IllegalArgumentException("Could not find schema path: '" + paramString + "'");
    }
  }
  
  public InputStream a()
  {
    return com.layer.sdk.internal.lsdke.lsdkb.lsdka.b.b(this.a, b());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdke/lsdkb/lsdkc/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */