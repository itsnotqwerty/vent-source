package com.google.firebase;

import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.ad;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.n;
import java.util.Arrays;

public final class b
{
  private final String beB;
  public final String beC;
  private final String beD;
  private final String beE;
  public final String beF;
  private final String beG;
  private final String beH;
  
  b(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (!n.bj(paramString1)) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "ApplicationId must be set.");
      this.beC = paramString1;
      this.beB = paramString2;
      this.beD = paramString3;
      this.beE = paramString4;
      this.beF = paramString5;
      this.beG = paramString6;
      this.beH = paramString7;
      return;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {}
    do
    {
      return false;
      paramObject = (b)paramObject;
    } while ((!ac.equal(this.beC, ((b)paramObject).beC)) || (!ac.equal(this.beB, ((b)paramObject).beB)) || (!ac.equal(this.beD, ((b)paramObject).beD)) || (!ac.equal(this.beE, ((b)paramObject).beE)) || (!ac.equal(this.beF, ((b)paramObject).beF)) || (!ac.equal(this.beG, ((b)paramObject).beG)) || (!ac.equal(this.beH, ((b)paramObject).beH)));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.beC, this.beB, this.beD, this.beE, this.beF, this.beG, this.beH });
  }
  
  public final String toString()
  {
    return ac.O(this).b("applicationId", this.beC).b("apiKey", this.beB).b("databaseUrl", this.beD).b("gcmSenderId", this.beF).b("storageBucket", this.beG).b("projectId", this.beH).toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */