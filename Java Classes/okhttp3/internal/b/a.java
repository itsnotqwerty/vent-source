package okhttp3.internal.b;

import java.io.IOException;
import okhttp3.r;
import okhttp3.r.a;
import okhttp3.t;
import okhttp3.w;
import okhttp3.y;

public final class a
  implements r
{
  public final t cgQ;
  
  public a(t paramt)
  {
    this.cgQ = paramt;
  }
  
  public final y a(r.a parama)
    throws IOException
  {
    okhttp3.internal.c.g localg = (okhttp3.internal.c.g)parama;
    w localw = localg.cZt;
    g localg1 = localg.dak;
    if (!localw.method.equals("GET")) {}
    for (boolean bool = true;; bool = false) {
      return localg.a(localw, localg1, localg1.a(this.cgQ, parama, bool), localg1.MR());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */