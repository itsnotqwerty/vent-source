package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;

public class f<T extends d>
{
  private static final k.a a = k.a(f.class);
  private boolean b;
  private h c;
  private Uri d;
  private T e;
  
  protected Uri a()
  {
    return this.d;
  }
  
  protected void a(Uri paramUri)
  {
    if (((this.d == null) && (paramUri == null)) || ((this.d != null) && (this.d.equals(paramUri)))) {
      return;
    }
    this.e = null;
    this.d = paramUri;
    if (paramUri != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.b = bool;
      return;
    }
  }
  
  protected void a(T paramT)
  {
    if (paramT == null)
    {
      this.e = null;
      this.d = null;
      this.b = false;
      return;
    }
    this.b = true;
    this.d = paramT.getId();
    this.e = paramT;
  }
  
  protected void a(h paramh)
  {
    if ((this.c != null) && (this.c != paramh)) {
      this.e = null;
    }
    this.c = paramh;
  }
  
  protected T b()
  {
    if (!this.b) {
      return null;
    }
    if (this.d == null) {
      throw new IllegalStateException("Null ID");
    }
    if (this.e != null) {
      return this.e;
    }
    if (this.c == null) {
      throw new IllegalStateException("Null context");
    }
    this.e = this.c.m().a(this.d, false);
    return this.e;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */