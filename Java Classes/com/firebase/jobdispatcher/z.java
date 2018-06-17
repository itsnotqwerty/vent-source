package com.firebase.jobdispatcher;

import java.util.List;

public final class z
{
  public static final u.c ayi = new u.c();
  
  public static u.b at(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Window start can't be less than 0");
    }
    if (paramInt2 < paramInt1) {
      throw new IllegalArgumentException("Window end can't be less than window start");
    }
    return new u.b(paramInt1, paramInt2);
  }
  
  public static u.a o(List<w> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      throw new IllegalArgumentException("Uris must not be null or empty.");
    }
    return new u.a(paramList);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */