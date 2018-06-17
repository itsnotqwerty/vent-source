package android.support.v4.e;

import android.support.v4.g.l;
import android.util.Base64;
import java.util.List;

public final class a
{
  final String Do;
  final String Dp;
  final String Dq;
  final List<List<byte[]>> Dr;
  final int Ds;
  final String Dt;
  
  public a(String paramString1, String paramString2, String paramString3, List<List<byte[]>> paramList)
  {
    this.Do = ((String)l.E(paramString1));
    this.Dp = ((String)l.E(paramString2));
    this.Dq = ((String)l.E(paramString3));
    this.Dr = ((List)l.E(paramList));
    this.Ds = 0;
    this.Dt = (this.Do + "-" + this.Dp + "-" + this.Dq);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FontRequest {mProviderAuthority: " + this.Do + ", mProviderPackage: " + this.Dp + ", mQuery: " + this.Dq + ", mCertificates:");
    int i = 0;
    while (i < this.Dr.size())
    {
      localStringBuilder.append(" [");
      List localList = (List)this.Dr.get(i);
      int j = 0;
      while (j < localList.size())
      {
        localStringBuilder.append(" \"");
        localStringBuilder.append(Base64.encodeToString((byte[])localList.get(j), 0));
        localStringBuilder.append("\"");
        j += 1;
      }
      localStringBuilder.append(" ]");
      i += 1;
    }
    localStringBuilder.append("}");
    localStringBuilder.append("mCertificatesArray: " + this.Ds);
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/e/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */