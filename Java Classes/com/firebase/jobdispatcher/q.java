package com.firebase.jobdispatcher;

import android.os.Bundle;
import java.util.Arrays;
import org.json.JSONObject;

final class q
  implements r
{
  final String axF;
  private final u axG;
  private final x axH;
  private final int axI;
  private final boolean axJ;
  private final int[] axK;
  private final boolean axL;
  private final aa axN;
  private final Bundle extras;
  final String tag;
  
  private q(a parama)
  {
    this.tag = parama.tag;
    this.axF = parama.axF;
    this.axG = parama.axG;
    this.axH = parama.axH;
    this.axJ = parama.axJ;
    this.axI = parama.axI;
    this.axK = parama.axK;
    this.extras = parama.extras;
    this.axL = parama.axL;
    this.axN = parama.axN;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (!getClass().equals(paramObject.getClass()))) {
        return false;
      }
      paramObject = (q)paramObject;
    } while ((this.tag.equals(((q)paramObject).tag)) && (this.axF.equals(((q)paramObject).axF)));
    return false;
  }
  
  public final Bundle getExtras()
  {
    return this.extras;
  }
  
  public final String getTag()
  {
    return this.tag;
  }
  
  public final int hashCode()
  {
    return this.tag.hashCode() * 31 + this.axF.hashCode();
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
  
  public final String toString()
  {
    return "JobInvocation{tag='" + JSONObject.quote(this.tag) + '\'' + ", service='" + this.axF + '\'' + ", trigger=" + this.axG + ", recurring=" + this.axJ + ", lifetime=" + this.axI + ", constraints=" + Arrays.toString(this.axK) + ", extras=" + this.extras + ", retryStrategy=" + this.axH + ", replaceCurrent=" + this.axL + ", triggerReason=" + this.axN + '}';
  }
  
  static final class a
  {
    String axF;
    u axG;
    x axH;
    int axI;
    boolean axJ;
    int[] axK;
    boolean axL;
    aa axN;
    final Bundle extras = new Bundle();
    String tag;
    
    final q kT()
    {
      if ((this.tag == null) || (this.axF == null) || (this.axG == null)) {
        throw new IllegalArgumentException("Required fields were not populated.");
      }
      return new q(this, (byte)0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */