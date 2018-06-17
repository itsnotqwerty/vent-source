package io.intercom.a.a.a.c.b;

import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.c.c.n;
import io.intercom.a.a.a.c.c.n.a;
import io.intercom.a.a.a.c.h;
import java.io.File;
import java.util.List;

final class b
  implements b.a<Object>, e
{
  private final List<h> cIO;
  private final f<?> cIP;
  private final e.a cIQ;
  private int cIR = -1;
  private h cIS;
  private List<n<File, ?>> cIT;
  private int cIU;
  private volatile n.a<?> cIV;
  private File cIW;
  
  b(f<?> paramf, e.a parama)
  {
    this(paramf.Ib(), paramf, parama);
  }
  
  b(List<h> paramList, f<?> paramf, e.a parama)
  {
    this.cIO = paramList;
    this.cIP = paramf;
    this.cIQ = parama;
  }
  
  private boolean HX()
  {
    return this.cIU < this.cIT.size();
  }
  
  public final boolean HW()
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if ((this.cIT == null) || (!HX()))
    {
      this.cIR += 1;
      if (this.cIR < this.cIO.size()) {}
    }
    do
    {
      do
      {
        return bool2;
        localObject = (h)this.cIO.get(this.cIR);
        c localc = new c((h)localObject, this.cIP.cIX);
        this.cIW = this.cIP.HZ().a(localc);
        if (this.cIW == null) {
          break;
        }
        this.cIS = ((h)localObject);
        this.cIT = this.cIP.m(this.cIW);
        this.cIU = 0;
        break;
        this.cIV = null;
        bool2 = bool1;
      } while (bool1);
      bool2 = bool1;
    } while (!HX());
    Object localObject = this.cIT;
    int i = this.cIU;
    this.cIU = (i + 1);
    this.cIV = ((n)((List)localObject).get(i)).b(this.cIW, this.cIP.width, this.cIP.height, this.cIP.cIZ);
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
    this.cIQ.a(this.cIS, paramObject, this.cIV.cMW, io.intercom.a.a.a.c.a.cHE, this.cIS);
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
    this.cIQ.a(this.cIS, paramException, this.cIV.cMW, io.intercom.a.a.a.c.a.cHE);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */