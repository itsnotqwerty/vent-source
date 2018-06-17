package android.support.constraint.a.a;

import android.support.constraint.a.b;
import android.support.constraint.a.f;
import android.support.constraint.a.h;
import java.util.ArrayList;

public final class a
  extends g
{
  public int fr = 0;
  private ArrayList<j> fs = new ArrayList(4);
  public boolean ft = true;
  
  public final void a(android.support.constraint.a.e parame)
  {
    this.gw[0] = this.go;
    this.gw[2] = this.gp;
    this.gw[1] = this.gq;
    this.gw[3] = this.gr;
    int i = 0;
    while (i < this.gw.length)
    {
      this.gw[i].fD = parame.h(this.gw[i]);
      i += 1;
    }
    c localc;
    Object localObject1;
    if ((this.fr >= 0) && (this.fr < 4))
    {
      localc = this.gw[this.fr];
      i = 0;
      if (i >= this.hK) {
        break label713;
      }
      localObject1 = this.hJ[i];
      if ((this.ft) || (((d)localObject1).au())) {
        if (((this.fr == 0) || (this.fr == 1)) && (((d)localObject1).aM() == d.a.hj)) {
          i = 1;
        }
      }
    }
    for (;;)
    {
      label164:
      label194:
      int j;
      label196:
      Object localObject2;
      b localb;
      h localh;
      if ((this.fr == 0) || (this.fr == 1))
      {
        if (this.gz.aM() == d.a.hi) {
          i = 0;
        }
        j = 0;
        if (j >= this.hK) {
          break label478;
        }
        localObject2 = this.hJ[j];
        if ((this.ft) || (((d)localObject2).au()))
        {
          localObject1 = parame.h(localObject2.gw[this.fr]);
          localObject2.gw[this.fr].fD = ((h)localObject1);
          if ((this.fr != 0) && (this.fr != 2)) {
            break label406;
          }
          localObject2 = localc.fD;
          localb = parame.ap();
          localh = parame.aq();
          localh.fe = 0;
          localb.b((h)localObject2, (h)localObject1, localh, 0);
          if (i != 0) {
            parame.a(localb, (int)(localb.dW.b(localh) * -1.0F), 1);
          }
          parame.b(localb);
        }
      }
      for (;;)
      {
        j += 1;
        break label196;
        if (((this.fr == 2) || (this.fr == 3)) && (((d)localObject1).aN() == d.a.hj))
        {
          i = 1;
          break label164;
        }
        i += 1;
        break;
        if (this.gz.aN() != d.a.hi) {
          break label194;
        }
        i = 0;
        break label194;
        label406:
        localObject2 = localc.fD;
        localb = parame.ap();
        localh = parame.aq();
        localh.fe = 0;
        localb.a((h)localObject2, (h)localObject1, localh, 0);
        if (i != 0) {
          parame.a(localb, (int)(localb.dW.b(localh) * -1.0F), 1);
        }
        parame.b(localb);
      }
      label478:
      if (this.fr == 0)
      {
        parame.c(this.gq.fD, this.go.fD, 0, 6);
        if (i == 0) {
          parame.c(this.go.fD, this.gz.gq.fD, 0, 5);
        }
      }
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (this.fr != 1) {
                break;
              }
              parame.c(this.go.fD, this.gq.fD, 0, 6);
            } while (i != 0);
            parame.c(this.go.fD, this.gz.go.fD, 0, 5);
            return;
            if (this.fr != 2) {
              break;
            }
            parame.c(this.gr.fD, this.gp.fD, 0, 6);
          } while (i != 0);
          parame.c(this.gp.fD, this.gz.gr.fD, 0, 5);
          return;
        } while (this.fr != 3);
        parame.c(this.gp.fD, this.gr.fD, 0, 6);
      } while (i != 0);
      parame.c(this.gp.fD, this.gz.gp.fD, 0, 5);
      return;
      label713:
      i = 0;
    }
  }
  
  public final boolean au()
  {
    return true;
  }
  
  public final void av()
  {
    super.av();
    this.fs.clear();
  }
  
  public final void aw()
  {
    float f = Float.MAX_VALUE;
    j localj1;
    j localj2;
    int i;
    label59:
    Object localObject;
    switch (this.fr)
    {
    default: 
    case 0: 
      do
      {
        return;
        localj1 = this.go.fu;
        int j = this.fs.size();
        localj2 = null;
        i = 0;
        if (i >= j) {
          break;
        }
        localObject = (j)this.fs.get(i);
      } while (((j)localObject).state != 1);
      if ((this.fr == 0) || (this.fr == 2))
      {
        if (((j)localObject).hQ >= f) {
          break label329;
        }
        f = ((j)localObject).hQ;
        localj2 = ((j)localObject).hP;
      }
      break;
    }
    label329:
    for (;;)
    {
      i += 1;
      break label59;
      localj1 = this.gq.fu;
      f = 0.0F;
      break;
      localj1 = this.gp.fu;
      break;
      localj1 = this.gr.fu;
      f = 0.0F;
      break;
      if (((j)localObject).hQ > f)
      {
        f = ((j)localObject).hQ;
        localj2 = ((j)localObject).hP;
        continue;
        if (android.support.constraint.a.e.am() != null)
        {
          localObject = android.support.constraint.a.e.am();
          ((f)localObject).eR += 1L;
        }
        localj1.hP = localj2;
        localj1.hQ = f;
        localj1.aU();
        switch (this.fr)
        {
        default: 
          return;
        case 0: 
          this.gq.fu.a(localj2, f);
          return;
        case 1: 
          this.go.fu.a(localj2, f);
          return;
        case 2: 
          this.gr.fu.a(localj2, f);
          return;
        }
        this.gp.fu.a(localj2, f);
        return;
      }
    }
  }
  
  public final void i(int paramInt)
  {
    if (this.gz == null) {}
    j localj;
    label109:
    label118:
    do
    {
      do
      {
        return;
      } while (!((e)this.gz).l(2));
      switch (this.fr)
      {
      default: 
        return;
      case 0: 
        localj = this.go.fu;
        localj.type = 5;
        if ((this.fr != 0) && (this.fr != 1)) {
          break label240;
        }
        this.gp.fu.a(null, 0.0F);
        this.gr.fu.a(null, 0.0F);
        this.fs.clear();
        paramInt = 0;
      }
    } while (paramInt >= this.hK);
    Object localObject = this.hJ[paramInt];
    if ((this.ft) || (((d)localObject).au())) {
      switch (this.fr)
      {
      default: 
        localObject = null;
      }
    }
    for (;;)
    {
      if (localObject != null)
      {
        this.fs.add(localObject);
        ((j)localObject).a(localj);
      }
      paramInt += 1;
      break label118;
      localj = this.gq.fu;
      break;
      localj = this.gp.fu;
      break;
      localj = this.gr.fu;
      break;
      label240:
      this.go.fu.a(null, 0.0F);
      this.gq.fu.a(null, 0.0F);
      break label109;
      localObject = ((d)localObject).go.fu;
      continue;
      localObject = ((d)localObject).gq.fu;
      continue;
      localObject = ((d)localObject).gp.fu;
      continue;
      localObject = ((d)localObject).gr.fu;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */