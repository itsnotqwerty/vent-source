package io.intercom.a.a.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import io.intercom.a.a.a.c.b.j;
import io.intercom.a.a.a.g.g;
import java.util.Map;

@TargetApi(14)
public final class e
  extends ContextWrapper
{
  static final k<?, ?> cFK = new b();
  final Map<Class<?>, k<?, ?>> cFB;
  final g cFG;
  private final io.intercom.a.a.a.g.a.e cFL;
  final j cFq;
  public final h cFv;
  public final io.intercom.a.a.a.c.b.a.b cFw;
  public final int logLevel;
  public final Handler mainHandler;
  
  public e(Context paramContext, io.intercom.a.a.a.c.b.a.b paramb, h paramh, io.intercom.a.a.a.g.a.e parame, g paramg, Map<Class<?>, k<?, ?>> paramMap, j paramj, int paramInt)
  {
    super(paramContext.getApplicationContext());
    this.cFw = paramb;
    this.cFv = paramh;
    this.cFL = parame;
    this.cFG = paramg;
    this.cFB = paramMap;
    this.cFq = paramj;
    this.logLevel = paramInt;
    this.mainHandler = new Handler(Looper.getMainLooper());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */