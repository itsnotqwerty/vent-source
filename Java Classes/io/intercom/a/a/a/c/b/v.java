package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.n.a;
import io.intercom.a.a.a.c.m;
import java.io.File;
import java.util.List;

final class v
  implements b.a<Object>, e
{
  private final f<?> cIP;
  private final e.a cIQ;
  private int cIR = 0;
  private io.intercom.a.a.a.c.h cIS;
  private List<n<File, ?>> cIT;
  private int cIU;
  private volatile n.a<?> cIV;
  private File cIW;
  private int cKW = -1;
  private w cKX;
  
  v(f<?> paramf, e.a parama)
  {
    this.cIP = paramf;
    this.cIQ = parama;
  }
  
  private boolean HX()
  {
    return this.cIU < this.cIT.size();
  }
  
  public final boolean HW()
  {
    List localList = this.cIP.Ib();
    boolean bool2;
    if (localList.isEmpty()) {
      bool2 = false;
    }
    boolean bool1;
    do
    {
      do
      {
        return bool2;
        Object localObject = this.cIP;
        localObject = ((f)localObject).cFu.cFv.b(((f)localObject).cGk.getClass(), ((f)localObject).cJb, ((f)localObject).cGh);
        while ((this.cIT == null) || (!HX()))
        {
          this.cKW += 1;
          if (this.cKW >= ((List)localObject).size())
          {
            this.cIR += 1;
            if (this.cIR >= localList.size()) {
              return false;
            }
            this.cKW = 0;
          }
          io.intercom.a.a.a.c.h localh = (io.intercom.a.a.a.c.h)localList.get(this.cIR);
          Class localClass = (Class)((List)localObject).get(this.cKW);
          m localm = this.cIP.B(localClass);
          this.cKX = new w(this.cIP.cFu.cFw, localh, this.cIP.cIX, this.cIP.width, this.cIP.height, localm, localClass, this.cIP.cIZ);
          this.cIW = this.cIP.HZ().a(this.cKX);
          if (this.cIW != null)
          {
            this.cIS = localh;
            this.cIT = this.cIP.m(this.cIW);
            this.cIU = 0;
          }
        }
        this.cIV = null;
        bool1 = false;
        bool2 = bool1;
      } while (bool1);
      bool2 = bool1;
    } while (!HX());
    localList = this.cIT;
    int i = this.cIU;
    this.cIU = (i + 1);
    this.cIV = ((n)localList.get(i)).b(this.cIW, this.cIP.width, this.cIP.height, this.cIP.cIZ);
    if ((this.cIV != null) && (this.cIP.z(this.cIV.cMW.HU())))
    {
      bool1 = true;
      this.cIV.cMW.a(this.cIP.cJg, this);
    }
    for (;;)
    {
      break;
    }
  }
  
  public final void as(Object paramObject)
  {
    this.cIQ.a(this.cIS, paramObject, this.cIV.cMW, io.intercom.a.a.a.c.a.cHF, this.cKX);
  }
  
  public final void cancel()
  {
    n.a locala = this.cIV;
    if (locala != null) {
      locala.cMW.cancel();
    }
  }
  
  public final void i(Exception paramException)
  {
    this.cIQ.a(this.cKX, paramException, this.cIV.cMW, io.intercom.a.a.a.c.a.cHF);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */