package com.firebase.jobdispatcher;

import android.os.Bundle;
import java.util.List;

public final class n
  implements r
{
  final String axF;
  final u axG;
  private final x axH;
  private final int axI;
  private final boolean axJ;
  private final int[] axK;
  private final boolean axL;
  private final Bundle extras;
  final String tag;
  
  private n(a parama)
  {
    this.axF = parama.axM;
    if (parama.extras == null)
    {
      localObject = null;
      this.extras = ((Bundle)localObject);
      this.tag = parama.tag;
      this.axG = parama.axG;
      this.axH = parama.axH;
      this.axI = parama.axI;
      this.axJ = parama.axJ;
      if (parama.axK == null) {
        break label107;
      }
    }
    label107:
    for (Object localObject = parama.axK;; localObject = new int[0])
    {
      this.axK = ((int[])localObject);
      this.axL = parama.axL;
      return;
      localObject = new Bundle(parama.extras);
      break;
    }
  }
  
  public final Bundle getExtras()
  {
    return this.extras;
  }
  
  public final String getTag()
  {
    return this.tag;
  }
  
  public final int[] kL()
  {
    return this.axK;
  }
  
  public final x kM()
  {
    return this.axH;
  }
  
  public final boolean kN()
  {
    return this.axL;
  }
  
  public final u kO()
  {
    return this.axG;
  }
  
  public final int kP()
  {
    return this.axI;
  }
  
  public final boolean kQ()
  {
    return this.axJ;
  }
  
  public final String kR()
  {
    return this.axF;
  }
  
  public static final class a
    implements r
  {
    public u axG = z.ayi;
    public x axH = x.ayb;
    public int axI = 1;
    public boolean axJ = false;
    public int[] axK;
    public boolean axL = false;
    String axM;
    private final ab axn;
    public Bundle extras;
    public String tag;
    
    a(ab paramab)
    {
      this.axn = paramab;
    }
    
    a(ab paramab, r paramr)
    {
      this.axn = paramab;
      this.tag = paramr.getTag();
      this.axM = paramr.kR();
      this.axG = paramr.kO();
      this.axJ = paramr.kQ();
      this.axI = paramr.kP();
      this.axK = paramr.kL();
      this.extras = paramr.getExtras();
      this.axH = paramr.kM();
    }
    
    public final a g(Class<? extends s> paramClass)
    {
      this.axM = paramClass.getName();
      return this;
    }
    
    public final Bundle getExtras()
    {
      return this.extras;
    }
    
    public final String getTag()
    {
      return this.tag;
    }
    
    public final int[] kL()
    {
      if (this.axK == null) {
        return new int[0];
      }
      return this.axK;
    }
    
    public final x kM()
    {
      return this.axH;
    }
    
    public final boolean kN()
    {
      return this.axL;
    }
    
    public final u kO()
    {
      return this.axG;
    }
    
    public final int kP()
    {
      return this.axI;
    }
    
    public final boolean kQ()
    {
      return this.axJ;
    }
    
    public final String kR()
    {
      return this.axM;
    }
    
    public final n kS()
    {
      List localList = this.axn.a(this);
      if (localList != null) {
        throw new ab.a("JobParameters is invalid", localList);
      }
      return new n(this, (byte)0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */