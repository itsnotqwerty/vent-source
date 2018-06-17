package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.i.e;
import io.intercom.a.a.a.i.i;
import java.util.Queue;

public final class m<A, B>
{
  public final e<a<A>, B> cMS;
  
  public m()
  {
    this(250L);
  }
  
  public m(long paramLong)
  {
    this.cMS = new e(paramLong) {};
  }
  
  public final B ax(A paramA)
  {
    paramA = a.ay(paramA);
    Object localObject = this.cMS.get(paramA);
    paramA.release();
    return (B)localObject;
  }
  
  public static final class a<A>
  {
    private static final Queue<a<?>> cMU = i.ft(0);
    private A cGk;
    private int height;
    private int width;
    
    public static <A> a<A> ay(A paramA)
    {
      synchronized (cMU)
      {
        a locala = (a)cMU.poll();
        ??? = locala;
        if (locala == null) {
          ??? = new a();
        }
        ((a)???).cGk = paramA;
        ((a)???).width = 0;
        ((a)???).height = 0;
        return (a<A>)???;
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (this.width == ((a)paramObject).width)
        {
          bool1 = bool2;
          if (this.height == ((a)paramObject).height)
          {
            bool1 = bool2;
            if (this.cGk.equals(((a)paramObject).cGk)) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    
    public final int hashCode()
    {
      return (this.height * 31 + this.width) * 31 + this.cGk.hashCode();
    }
    
    public final void release()
    {
      synchronized (cMU)
      {
        cMU.offer(this);
        return;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */