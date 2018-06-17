package io.intercom.a.a.a.c.d.e;

import android.graphics.Bitmap;
import io.intercom.a.a.a.b.a;
import io.intercom.a.a.a.c.b.q;
import io.intercom.a.a.a.c.d.c.b;
import io.intercom.a.a.a.i.i;
import io.intercom.a.a.a.j;
import java.util.List;

public final class e
  extends b<c>
  implements q
{
  public e(c paramc)
  {
    super(paramc);
  }
  
  public final Class<c> Iu()
  {
    return c.class;
  }
  
  public final int getSize()
  {
    g localg = ((c)this.cOs).cOy.cOF;
    int i = localg.cOG.HL();
    return i.g(localg.Jo().getWidth(), localg.Jo().getHeight(), localg.Jo().getConfig()) + i;
  }
  
  public final void initialize()
  {
    ((c)this.cOs).Jj().prepareToDraw();
  }
  
  public final void recycle()
  {
    ((c)this.cOs).stop();
    Object localObject = (c)this.cOs;
    ((c)localObject).cKL = true;
    localObject = ((c)localObject).cOy.cOF;
    ((g)localObject).cOH.clear();
    ((g)localObject).Jq();
    ((g)localObject).cOz = false;
    if (((g)localObject).cOL != null)
    {
      ((g)localObject).requestManager.b(((g)localObject).cOL);
      ((g)localObject).cOL = null;
    }
    if (((g)localObject).cON != null)
    {
      ((g)localObject).requestManager.b(((g)localObject).cON);
      ((g)localObject).cON = null;
    }
    if (((g)localObject).cOP != null)
    {
      ((g)localObject).requestManager.b(((g)localObject).cOP);
      ((g)localObject).cOP = null;
    }
    ((g)localObject).cOG.clear();
    ((g)localObject).cOM = true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */