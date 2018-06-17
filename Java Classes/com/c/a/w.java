package com.c.a;

import android.graphics.Bitmap.Config;
import android.net.Uri;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class w
{
  private static final long bOC = TimeUnit.SECONDS.toNanos(5L);
  int bMK;
  public final int bNi;
  long bOD;
  public final String bOE;
  public final List<ae> bOF;
  public final int bOG;
  public final int bOH;
  public final boolean bOI;
  public final boolean bOJ;
  public final boolean bOK;
  public final float bOL;
  public final float bOM;
  public final float bON;
  public final boolean bOO;
  public final Bitmap.Config bOP;
  int id;
  public final int resourceId;
  public final Uri uri;
  
  private w(Uri paramUri, int paramInt1, String paramString, List<ae> paramList, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean4, Bitmap.Config paramConfig, int paramInt4)
  {
    this.uri = paramUri;
    this.resourceId = paramInt1;
    this.bOE = paramString;
    if (paramList == null) {}
    for (this.bOF = null;; this.bOF = Collections.unmodifiableList(paramList))
    {
      this.bOG = paramInt2;
      this.bOH = paramInt3;
      this.bOI = paramBoolean1;
      this.bOJ = paramBoolean2;
      this.bOK = paramBoolean3;
      this.bOL = paramFloat1;
      this.bOM = paramFloat2;
      this.bON = paramFloat3;
      this.bOO = paramBoolean4;
      this.bOP = paramConfig;
      this.bNi = paramInt4;
      return;
    }
  }
  
  final String Au()
  {
    long l = System.nanoTime() - this.bOD;
    if (l > bOC) {
      return Av() + '+' + TimeUnit.NANOSECONDS.toSeconds(l) + 's';
    }
    return Av() + '+' + TimeUnit.NANOSECONDS.toMillis(l) + "ms";
  }
  
  final String Av()
  {
    return "[R" + this.id + ']';
  }
  
  public final boolean Aw()
  {
    return (this.bOG != 0) || (this.bOH != 0);
  }
  
  final boolean Ax()
  {
    return (Aw()) || (this.bOL != 0.0F);
  }
  
  final boolean Ay()
  {
    return this.bOF != null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{");
    if (this.resourceId > 0) {
      localStringBuilder.append(this.resourceId);
    }
    while ((this.bOF != null) && (!this.bOF.isEmpty()))
    {
      Iterator localIterator = this.bOF.iterator();
      while (localIterator.hasNext())
      {
        ae localae = (ae)localIterator.next();
        localStringBuilder.append(' ').append(localae.key());
      }
      localStringBuilder.append(this.uri);
    }
    if (this.bOE != null) {
      localStringBuilder.append(" stableKey(").append(this.bOE).append(')');
    }
    if (this.bOG > 0) {
      localStringBuilder.append(" resize(").append(this.bOG).append(',').append(this.bOH).append(')');
    }
    if (this.bOI) {
      localStringBuilder.append(" centerCrop");
    }
    if (this.bOJ) {
      localStringBuilder.append(" centerInside");
    }
    if (this.bOL != 0.0F)
    {
      localStringBuilder.append(" rotation(").append(this.bOL);
      if (this.bOO) {
        localStringBuilder.append(" @ ").append(this.bOM).append(',').append(this.bON);
      }
      localStringBuilder.append(')');
    }
    if (this.bOP != null) {
      localStringBuilder.append(' ').append(this.bOP);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static final class a
  {
    int bNi;
    String bOE;
    List<ae> bOF;
    public int bOG;
    public int bOH;
    public boolean bOI;
    public boolean bOJ;
    public boolean bOK;
    float bOL;
    float bOM;
    float bON;
    boolean bOO;
    Bitmap.Config bOP;
    int resourceId;
    Uri uri;
    
    a(Uri paramUri, Bitmap.Config paramConfig)
    {
      this.uri = paramUri;
      this.resourceId = 0;
      this.bOP = paramConfig;
    }
    
    public final boolean Az()
    {
      return (this.uri != null) || (this.resourceId != 0);
    }
    
    public final a aD(int paramInt1, int paramInt2)
    {
      if (paramInt1 < 0) {
        throw new IllegalArgumentException("Width must be positive number or 0.");
      }
      if (paramInt2 < 0) {
        throw new IllegalArgumentException("Height must be positive number or 0.");
      }
      if ((paramInt2 == 0) && (paramInt1 == 0)) {
        throw new IllegalArgumentException("At least one dimension has to be positive number.");
      }
      this.bOG = paramInt1;
      this.bOH = paramInt2;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */