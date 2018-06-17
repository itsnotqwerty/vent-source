package okhttp3.internal.c;

import d.l;
import java.io.IOException;
import java.util.List;
import okhttp3.internal.c;
import okhttp3.k;
import okhttp3.p;
import okhttp3.p.a;
import okhttp3.r;
import okhttp3.r.a;
import okhttp3.w;
import okhttp3.w.a;
import okhttp3.x;
import okhttp3.y;
import okhttp3.y.a;
import okhttp3.z;

public final class a
  implements r
{
  private final k cZa;
  
  public a(k paramk)
  {
    this.cZa = paramk;
  }
  
  public final y a(r.a parama)
    throws IOException
  {
    int j = 0;
    Object localObject1 = parama.MD();
    Object localObject2 = ((w)localObject1).MF();
    Object localObject3 = ((w)localObject1).cZp;
    Object localObject4;
    if (localObject3 != null)
    {
      localObject4 = ((x)localObject3).LX();
      if (localObject4 != null) {
        ((w.a)localObject2).Z("Content-Type", ((okhttp3.s)localObject4).toString());
      }
      long l = ((x)localObject3).contentLength();
      if (l != -1L)
      {
        ((w.a)localObject2).Z("Content-Length", Long.toString(l));
        ((w.a)localObject2).fz("Transfer-Encoding");
      }
    }
    else
    {
      if (((w)localObject1).header("Host") == null) {
        ((w.a)localObject2).Z("Host", c.a(((w)localObject1).cVX, false));
      }
      if (((w)localObject1).header("Connection") == null) {
        ((w.a)localObject2).Z("Connection", "Keep-Alive");
      }
      if ((((w)localObject1).header("Accept-Encoding") != null) || (((w)localObject1).header("Range") != null)) {
        break label465;
      }
      ((w.a)localObject2).Z("Accept-Encoding", "gzip");
    }
    label465:
    for (int i = 1;; i = 0)
    {
      localObject3 = this.cZa.Me();
      if (!((List)localObject3).isEmpty())
      {
        localObject4 = new StringBuilder();
        int k = ((List)localObject3).size();
        for (;;)
        {
          if (j < k)
          {
            if (j > 0) {
              ((StringBuilder)localObject4).append("; ");
            }
            okhttp3.j localj = (okhttp3.j)((List)localObject3).get(j);
            ((StringBuilder)localObject4).append(localj.name).append('=').append(localj.value);
            j += 1;
            continue;
            ((w.a)localObject2).Z("Transfer-Encoding", "chunked");
            ((w.a)localObject2).fz("Content-Length");
            break;
          }
        }
        ((w.a)localObject2).Z("Cookie", ((StringBuilder)localObject4).toString());
      }
      if (((w)localObject1).header("User-Agent") == null) {
        ((w.a)localObject2).Z("User-Agent", "okhttp/3.10.0");
      }
      parama = parama.c(((w.a)localObject2).MH());
      e.a(this.cZa, ((w)localObject1).cVX, parama.cZo);
      localObject2 = parama.MI();
      ((y.a)localObject2).cZt = ((w)localObject1);
      if ((i != 0) && ("gzip".equalsIgnoreCase(parama.header("Content-Encoding"))) && (e.i(parama)))
      {
        localObject1 = new d.j(parama.cZu.LY());
        ((y.a)localObject2).c(parama.cZo.MA().fs("Content-Encoding").fs("Content-Length").MB());
        ((y.a)localObject2).cZu = new h(parama.header("Content-Type"), -1L, l.b((d.s)localObject1));
      }
      return ((y.a)localObject2).MJ();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */