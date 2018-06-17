package android.support.v4.content;

import android.support.v4.g.d;

public final class b<D>
{
  public a<D> Bb;
  public boolean Bc;
  public boolean Bd;
  public boolean Be;
  public boolean Bf;
  public boolean uY;
  public int yo;
  
  public static String dataToString(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    d.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    d.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.yo);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public static abstract interface a<D> {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/content/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */