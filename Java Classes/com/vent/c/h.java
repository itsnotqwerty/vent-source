package com.vent.c;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.CharacterStyle;
import com.vent.d.e;

public final class h
{
  static void a(Paint paramPaint, String paramString)
  {
    int k = 2;
    int i = -1;
    Typeface localTypeface = paramPaint.getTypeface();
    int j;
    if (localTypeface == null)
    {
      j = 0;
      if ((localTypeface != null) && (localTypeface == e.cne)) {
        break label360;
      }
      switch (paramString.hashCode())
      {
      default: 
        switch (i)
        {
        default: 
          label100:
          paramString = Typeface.create(paramString, j);
          i = (paramString.getStyle() ^ 0xFFFFFFFF) & j;
        }
        break;
      }
    }
    for (;;)
    {
      if ((i & 0x1) != 0) {
        paramPaint.setFakeBoldText(true);
      }
      if ((i & 0x2) != 0) {
        paramPaint.setTextSkewX(-0.25F);
      }
      paramPaint.setTypeface(paramString);
      return;
      j = localTypeface.getStyle();
      break;
      if (!paramString.equals("noto")) {
        break label100;
      }
      i = 0;
      break label100;
      if (!paramString.equals("roboto-regular")) {
        break label100;
      }
      i = 1;
      break label100;
      if (!paramString.equals("roboto-italic")) {
        break label100;
      }
      i = 2;
      break label100;
      if (!paramString.equals("roboto-medium")) {
        break label100;
      }
      i = 3;
      break label100;
      if (!paramString.equals("roboto-light")) {
        break label100;
      }
      i = 4;
      break label100;
      if (!paramString.equals("klinicslab-book")) {
        break label100;
      }
      i = 5;
      break label100;
      if (!paramString.equals("klinicslab-light")) {
        break label100;
      }
      i = 6;
      break label100;
      paramString = e.cne;
      i = 0;
      continue;
      paramString = e.cmX;
      i = 0;
      continue;
      paramString = e.cmY;
      i = 0;
      continue;
      paramString = e.cmW;
      i = 0;
      continue;
      paramString = e.cmZ;
      i = 0;
      continue;
      paramString = e.cmV;
      i = 0;
      continue;
      paramString = e.cmU;
      i = 0;
    }
    label360:
    localTypeface = e.cne;
    switch (paramString.hashCode())
    {
    default: 
      j = i;
    }
    for (;;)
    {
      i = k;
      paramString = localTypeface;
      switch (j)
      {
      }
      i = 0;
      paramString = localTypeface;
      break;
      j = i;
      if (paramString.equals("roboto-italic")) {
        j = 0;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract CharacterStyle Fx();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */