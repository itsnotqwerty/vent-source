package com.firebase.jobdispatcher;

import android.net.Uri;

public final class w
{
  final int flags;
  final Uri uri;
  
  public w(Uri paramUri, int paramInt)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("URI must not be null.");
    }
    this.uri = paramUri;
    this.flags = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof w)) {
        return false;
      }
      paramObject = (w)paramObject;
    } while ((this.flags == ((w)paramObject).flags) && (this.uri.equals(((w)paramObject).uri)));
    return false;
  }
  
  public final int hashCode()
  {
    return this.uri.hashCode() ^ this.flags;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */