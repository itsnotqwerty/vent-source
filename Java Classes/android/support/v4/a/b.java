package android.support.v4.a;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

public final class b
{
  private static int a(String paramString, int paramInt)
  {
    for (;;)
    {
      if (paramInt < paramString.length())
      {
        int i = paramString.charAt(paramInt);
        if ((((i - 65) * (i - 90) > 0) && ((i - 97) * (i - 122) > 0)) || (i == 101) || (i == 69)) {}
      }
      else
      {
        return paramInt;
      }
      paramInt += 1;
    }
  }
  
  private static void a(ArrayList<b> paramArrayList, char paramChar, float[] paramArrayOfFloat)
  {
    paramArrayList.add(new b(paramChar, paramArrayOfFloat));
  }
  
  public static boolean a(b[] paramArrayOfb1, b[] paramArrayOfb2)
  {
    if ((paramArrayOfb1 == null) || (paramArrayOfb2 == null)) {}
    while (paramArrayOfb1.length != paramArrayOfb2.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfb1.length) {
        break label64;
      }
      if ((paramArrayOfb1[i].BG != paramArrayOfb2[i].BG) || (paramArrayOfb1[i].BH.length != paramArrayOfb2[i].BH.length)) {
        break;
      }
      i += 1;
    }
    label64:
    return true;
  }
  
  static float[] a(float[] paramArrayOfFloat, int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException();
    }
    int i = paramArrayOfFloat.length;
    if (i < 0) {
      throw new ArrayIndexOutOfBoundsException();
    }
    paramInt += 0;
    i = Math.min(paramInt, i + 0);
    float[] arrayOfFloat = new float[paramInt];
    System.arraycopy(paramArrayOfFloat, 0, arrayOfFloat, 0, i);
    return arrayOfFloat;
  }
  
  public static b[] a(b[] paramArrayOfb)
  {
    if (paramArrayOfb == null) {
      return null;
    }
    b[] arrayOfb = new b[paramArrayOfb.length];
    int i = 0;
    while (i < paramArrayOfb.length)
    {
      arrayOfb[i] = new b(paramArrayOfb[i]);
      i += 1;
    }
    return arrayOfb;
  }
  
  public static Path x(String paramString)
  {
    Path localPath = new Path();
    b[] arrayOfb = y(paramString);
    if (arrayOfb != null) {
      try
      {
        b.a(arrayOfb, localPath);
        return localPath;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw new RuntimeException("Error in parsing " + paramString, localRuntimeException);
      }
    }
    return null;
  }
  
  public static b[] y(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int j = 1;
    int i = 0;
    while (j < paramString.length())
    {
      j = a(paramString, j);
      String str = paramString.substring(i, j).trim();
      if (str.length() > 0)
      {
        float[] arrayOfFloat = z(str);
        a(localArrayList, str.charAt(0), arrayOfFloat);
      }
      int k = j + 1;
      i = j;
      j = k;
    }
    if ((j - i == 1) && (i < paramString.length())) {
      a(localArrayList, paramString.charAt(i), new float[0]);
    }
    return (b[])localArrayList.toArray(new b[localArrayList.size()]);
  }
  
  private static float[] z(String paramString)
  {
    if ((paramString.charAt(0) == 'z') || (paramString.charAt(0) == 'Z')) {
      return new float[0];
    }
    for (;;)
    {
      int i1;
      int m;
      int n;
      try
      {
        float[] arrayOfFloat = new float[paramString.length()];
        a locala = new a();
        int i2 = paramString.length();
        k = 1;
        j = 0;
        if (k < i2)
        {
          locala.BF = false;
          i = 0;
          i1 = 0;
          m = 0;
          n = k;
          if (n >= paramString.length()) {}
        }
        switch (paramString.charAt(n))
        {
        case '-': 
          if ((n == k) || (i != 0)) {
            break label289;
          }
          locala.BF = true;
          i = 0;
          m = 1;
          break label291;
          label172:
          locala.BF = true;
          i = 0;
          m = 1;
          break label291;
          locala.BE = n;
          m = locala.BE;
          if (k < m)
          {
            i = j + 1;
            arrayOfFloat[j] = Float.parseFloat(paramString.substring(k, m));
            if (!locala.BF) {
              break label331;
            }
            k = m;
            j = i;
            continue;
            arrayOfFloat = a(arrayOfFloat, j);
            return arrayOfFloat;
          }
          break;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new RuntimeException("error in parsing \"" + paramString + "\"", localNumberFormatException);
      }
      int i = j;
      continue;
      label289:
      i = 0;
      for (;;)
      {
        label291:
        if (m != 0) {
          break label329;
        }
        n += 1;
        break;
        i = 0;
        m = 1;
        continue;
        if (i1 != 0) {
          break label172;
        }
        i = 0;
        i1 = 1;
        continue;
        i = 1;
      }
      label329:
      continue;
      label331:
      int k = m + 1;
      int j = i;
    }
  }
  
  private static final class a
  {
    int BE;
    boolean BF;
  }
  
  public static final class b
  {
    public char BG;
    public float[] BH;
    
    b(char paramChar, float[] paramArrayOfFloat)
    {
      this.BG = paramChar;
      this.BH = paramArrayOfFloat;
    }
    
    b(b paramb)
    {
      this.BG = paramb.BG;
      this.BH = b.a(paramb.BH, paramb.BH.length);
    }
    
    private static void a(Path paramPath, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, double paramDouble6, double paramDouble7, double paramDouble8, double paramDouble9)
    {
      int j = (int)Math.ceil(Math.abs(4.0D * paramDouble9 / 3.141592653589793D));
      double d6 = Math.cos(paramDouble7);
      double d7 = Math.sin(paramDouble7);
      paramDouble7 = Math.cos(paramDouble8);
      double d2 = Math.sin(paramDouble8);
      double d1 = -paramDouble3 * d6 * d2 - paramDouble4 * d7 * paramDouble7;
      d2 = paramDouble7 * (paramDouble4 * d6) + d2 * (-paramDouble3 * d7);
      double d8 = paramDouble9 / j;
      int i = 0;
      paramDouble9 = paramDouble8;
      paramDouble8 = paramDouble6;
      paramDouble7 = paramDouble5;
      paramDouble6 = d1;
      paramDouble5 = d2;
      while (i < j)
      {
        double d3 = paramDouble9 + d8;
        double d5 = Math.sin(d3);
        double d9 = Math.cos(d3);
        d1 = paramDouble3 * d6 * d9 + paramDouble1 - paramDouble4 * d7 * d5;
        d2 = paramDouble4 * d6 * d5 + (paramDouble3 * d7 * d9 + paramDouble2);
        double d4 = -paramDouble3 * d6 * d5 - paramDouble4 * d7 * d9;
        d5 = d9 * (paramDouble4 * d6) + d5 * (-paramDouble3 * d7);
        d9 = Math.tan((d3 - paramDouble9) / 2.0D);
        paramDouble9 = Math.sin(d3 - paramDouble9);
        paramDouble9 = (Math.sqrt(d9 * (3.0D * d9) + 4.0D) - 1.0D) * paramDouble9 / 3.0D;
        paramPath.rLineTo(0.0F, 0.0F);
        paramPath.cubicTo((float)(paramDouble6 * paramDouble9 + paramDouble7), (float)(paramDouble8 + paramDouble5 * paramDouble9), (float)(d1 - paramDouble9 * d4), (float)(d2 - paramDouble9 * d5), (float)d1, (float)d2);
        paramDouble5 = d5;
        paramDouble6 = d4;
        paramDouble9 = d3;
        i += 1;
        paramDouble8 = d2;
        paramDouble7 = d1;
      }
    }
    
    private static void a(Path paramPath, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, boolean paramBoolean1, boolean paramBoolean2)
    {
      double d5;
      double d6;
      double d7;
      double d8;
      double d9;
      double d4;
      double d11;
      double d10;
      double d3;
      double d2;
      double d13;
      for (;;)
      {
        d5 = Math.toRadians(paramFloat7);
        d6 = Math.cos(d5);
        d7 = Math.sin(d5);
        d8 = (paramFloat1 * d6 + paramFloat2 * d7) / paramFloat5;
        d9 = (-paramFloat1 * d7 + paramFloat2 * d6) / paramFloat6;
        d1 = (paramFloat3 * d6 + paramFloat4 * d7) / paramFloat5;
        d4 = (-paramFloat3 * d7 + paramFloat4 * d6) / paramFloat6;
        d11 = d8 - d1;
        d10 = d9 - d4;
        d3 = (d8 + d1) / 2.0D;
        d2 = (d9 + d4) / 2.0D;
        d12 = d11 * d11 + d10 * d10;
        if (d12 == 0.0D)
        {
          Log.w("PathParser", " Points are coincident");
          return;
        }
        d13 = 1.0D / d12 - 0.25D;
        if (d13 >= 0.0D) {
          break;
        }
        Log.w("PathParser", "Points are too far apart " + d12);
        float f = (float)(Math.sqrt(d12) / 1.99999D);
        paramFloat5 *= f;
        paramFloat6 *= f;
      }
      double d12 = Math.sqrt(d13);
      d11 *= d12;
      d10 *= d12;
      if (paramBoolean1 == paramBoolean2)
      {
        d3 -= d10;
        d2 = d11 + d2;
        d8 = Math.atan2(d9 - d2, d8 - d3);
        d4 = Math.atan2(d4 - d2, d1 - d3) - d8;
        if (d4 < 0.0D) {
          break label415;
        }
        paramBoolean1 = true;
        label313:
        d1 = d4;
        if (paramBoolean2 != paramBoolean1) {
          if (d4 <= 0.0D) {
            break label421;
          }
        }
      }
      label415:
      label421:
      for (double d1 = d4 - 6.283185307179586D;; d1 = d4 + 6.283185307179586D)
      {
        d3 *= paramFloat5;
        d2 = paramFloat6 * d2;
        a(paramPath, d3 * d6 - d2 * d7, d3 * d7 + d6 * d2, paramFloat5, paramFloat6, paramFloat1, paramFloat2, d5, d8, d1);
        return;
        d3 = d10 + d3;
        d2 -= d11;
        break;
        paramBoolean1 = false;
        break label313;
      }
    }
    
    public static void a(b[] paramArrayOfb, Path paramPath)
    {
      float[] arrayOfFloat1 = new float[6];
      int j = 109;
      int k = 0;
      float[] arrayOfFloat2;
      float f5;
      float f4;
      float f6;
      float f1;
      float f2;
      int m;
      float f7;
      float f8;
      label266:
      label458:
      float f9;
      if (k < paramArrayOfb.length)
      {
        int n = paramArrayOfb[k].BG;
        arrayOfFloat2 = paramArrayOfb[k].BH;
        f5 = arrayOfFloat1[0];
        f4 = arrayOfFloat1[1];
        f6 = arrayOfFloat1[2];
        f3 = arrayOfFloat1[3];
        f1 = arrayOfFloat1[4];
        f2 = arrayOfFloat1[5];
        int i;
        switch (n)
        {
        default: 
          i = 2;
          m = 0;
          f7 = f4;
          f4 = f5;
          f5 = f7;
          f8 = f6;
          if (m < arrayOfFloat2.length) {
            switch (n)
            {
            default: 
              f6 = f1;
              f1 = f3;
              f3 = f5;
              f5 = f4;
              f4 = f3;
              f3 = f6;
              f6 = f8;
            }
          }
          break;
        case 90: 
        case 122: 
        case 76: 
        case 77: 
        case 84: 
        case 108: 
        case 109: 
        case 116: 
        case 72: 
        case 86: 
        case 104: 
        case 118: 
        case 67: 
        case 99: 
        case 81: 
        case 83: 
        case 113: 
        case 115: 
        case 65: 
        case 97: 
          for (;;)
          {
            m += i;
            f7 = f3;
            f9 = f5;
            j = n;
            f8 = f6;
            f3 = f1;
            f1 = f7;
            f5 = f4;
            f4 = f9;
            break label266;
            paramPath.close();
            paramPath.moveTo(f1, f2);
            f3 = f2;
            f6 = f1;
            f4 = f2;
            f5 = f1;
            i = 2;
            break;
            i = 2;
            break;
            i = 1;
            break;
            i = 6;
            break;
            i = 4;
            break;
            i = 7;
            break;
            f4 += arrayOfFloat2[(m + 0)];
            f5 = arrayOfFloat2[(m + 1)] + f5;
            if (m > 0)
            {
              paramPath.rLineTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
              f7 = f1;
              f1 = f3;
              f9 = f4;
              f6 = f8;
              f3 = f7;
              f4 = f5;
              f5 = f9;
            }
            else
            {
              paramPath.rMoveTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
              f2 = f5;
              f7 = f4;
              f1 = f3;
              f9 = f4;
              f6 = f8;
              f3 = f7;
              f4 = f5;
              f5 = f9;
              continue;
              f4 = arrayOfFloat2[(m + 0)];
              f5 = arrayOfFloat2[(m + 1)];
              if (m > 0)
              {
                paramPath.lineTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
                f7 = f1;
                f1 = f3;
                f9 = f4;
                f6 = f8;
                f3 = f7;
                f4 = f5;
                f5 = f9;
              }
              else
              {
                paramPath.moveTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
                f2 = f5;
                f7 = f4;
                f1 = f3;
                f9 = f4;
                f6 = f8;
                f3 = f7;
                f4 = f5;
                f5 = f9;
                continue;
                paramPath.rLineTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
                f6 = arrayOfFloat2[(m + 0)];
                f9 = arrayOfFloat2[(m + 1)];
                f7 = f1;
                f1 = f3;
                f5 = f9 + f5;
                f9 = f4 + f6;
                f6 = f8;
                f3 = f7;
                f4 = f5;
                f5 = f9;
                continue;
                paramPath.lineTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
                f7 = arrayOfFloat2[(m + 0)];
                f5 = arrayOfFloat2[(m + 1)];
                f4 = f1;
                f1 = f3;
                f6 = f8;
                f3 = f4;
                f4 = f5;
                f5 = f7;
                continue;
                paramPath.rLineTo(arrayOfFloat2[(m + 0)], 0.0F);
                f6 = arrayOfFloat2[(m + 0)];
                f7 = f1;
                f1 = f3;
                f9 = f4 + f6;
                f6 = f8;
                f3 = f7;
                f4 = f5;
                f5 = f9;
                continue;
                paramPath.lineTo(arrayOfFloat2[(m + 0)], f5);
                f7 = arrayOfFloat2[(m + 0)];
                f4 = f1;
                f1 = f3;
                f6 = f8;
                f3 = f4;
                f4 = f5;
                f5 = f7;
                continue;
                paramPath.rLineTo(0.0F, arrayOfFloat2[(m + 0)]);
                f6 = arrayOfFloat2[(m + 0)];
                f7 = f1;
                f1 = f3;
                f9 = f6 + f5;
                f5 = f4;
                f6 = f8;
                f3 = f7;
                f4 = f9;
                continue;
                paramPath.lineTo(f4, arrayOfFloat2[(m + 0)]);
                f7 = arrayOfFloat2[(m + 0)];
                f5 = f1;
                f1 = f3;
                f9 = f4;
                f6 = f8;
                f3 = f5;
                f4 = f7;
                f5 = f9;
                continue;
                paramPath.rCubicTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)], arrayOfFloat2[(m + 4)], arrayOfFloat2[(m + 5)]);
                f6 = f4 + arrayOfFloat2[(m + 2)];
                f9 = arrayOfFloat2[(m + 3)];
                f7 = arrayOfFloat2[(m + 4)];
                f8 = arrayOfFloat2[(m + 5)];
                f3 = f1;
                f1 = f5 + f9;
                f5 = f8 + f5;
                f7 = f4 + f7;
                f4 = f5;
                f5 = f7;
                continue;
                paramPath.cubicTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)], arrayOfFloat2[(m + 4)], arrayOfFloat2[(m + 5)]);
                f5 = arrayOfFloat2[(m + 4)];
                f4 = arrayOfFloat2[(m + 5)];
                f6 = arrayOfFloat2[(m + 2)];
                f7 = arrayOfFloat2[(m + 3)];
                f3 = f1;
                f1 = f7;
                continue;
                f6 = 0.0F;
                f7 = 0.0F;
                if ((j == 99) || (j == 115) || (j == 67) || (j == 83))
                {
                  f6 = f4 - f8;
                  f7 = f5 - f3;
                }
                paramPath.rCubicTo(f6, f7, arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)]);
                f6 = f4 + arrayOfFloat2[(m + 0)];
                f9 = arrayOfFloat2[(m + 1)];
                f7 = arrayOfFloat2[(m + 2)];
                f8 = arrayOfFloat2[(m + 3)];
                f3 = f1;
                f1 = f5 + f9;
                f5 = f8 + f5;
                f7 = f4 + f7;
                f4 = f5;
                f5 = f7;
              }
            }
          }
          if ((j == 99) || (j == 115) || (j == 67) || (j == 83))
          {
            f4 = 2.0F * f4 - f8;
            f5 = 2.0F * f5 - f3;
          }
          break;
        }
      }
      for (float f3 = f4;; f3 = f4)
      {
        paramPath.cubicTo(f3, f5, arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)]);
        f6 = arrayOfFloat2[(m + 0)];
        f7 = arrayOfFloat2[(m + 1)];
        f5 = arrayOfFloat2[(m + 2)];
        f4 = arrayOfFloat2[(m + 3)];
        f3 = f1;
        f1 = f7;
        break label458;
        paramPath.rQuadTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)]);
        f6 = f4 + arrayOfFloat2[(m + 0)];
        f9 = arrayOfFloat2[(m + 1)];
        f7 = arrayOfFloat2[(m + 2)];
        f8 = arrayOfFloat2[(m + 3)];
        f3 = f1;
        f1 = f5 + f9;
        f5 = f8 + f5;
        f7 = f4 + f7;
        f4 = f5;
        f5 = f7;
        break label458;
        paramPath.quadTo(arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)], arrayOfFloat2[(m + 2)], arrayOfFloat2[(m + 3)]);
        f6 = arrayOfFloat2[(m + 0)];
        f7 = arrayOfFloat2[(m + 1)];
        f5 = arrayOfFloat2[(m + 2)];
        f4 = arrayOfFloat2[(m + 3)];
        f3 = f1;
        f1 = f7;
        break label458;
        f7 = 0.0F;
        f6 = 0.0F;
        if ((j == 113) || (j == 116) || (j == 81) || (j == 84))
        {
          f7 = f4 - f8;
          f6 = f5 - f3;
        }
        paramPath.rQuadTo(f7, f6, arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
        f7 = f4 + f7;
        f8 = arrayOfFloat2[(m + 0)];
        f9 = arrayOfFloat2[(m + 1)];
        f3 = f1;
        f1 = f5 + f6;
        f5 = f9 + f5;
        f8 = f4 + f8;
        f6 = f7;
        f4 = f5;
        f5 = f8;
        break label458;
        if ((j != 113) && (j != 116) && (j != 81))
        {
          f7 = f5;
          f6 = f4;
          if (j != 84) {}
        }
        else
        {
          f6 = 2.0F * f4 - f8;
          f7 = 2.0F * f5 - f3;
        }
        paramPath.quadTo(f6, f7, arrayOfFloat2[(m + 0)], arrayOfFloat2[(m + 1)]);
        f5 = arrayOfFloat2[(m + 0)];
        f4 = arrayOfFloat2[(m + 1)];
        f3 = f1;
        f1 = f7;
        break label458;
        f3 = arrayOfFloat2[(m + 5)];
        f6 = arrayOfFloat2[(m + 6)];
        f7 = arrayOfFloat2[(m + 0)];
        f8 = arrayOfFloat2[(m + 1)];
        f9 = arrayOfFloat2[(m + 2)];
        boolean bool1;
        if (arrayOfFloat2[(m + 3)] != 0.0F)
        {
          bool1 = true;
          label2123:
          if (arrayOfFloat2[(m + 4)] == 0.0F) {
            break label2218;
          }
        }
        label2218:
        for (boolean bool2 = true;; bool2 = false)
        {
          a(paramPath, f4, f5, f3 + f4, f6 + f5, f7, f8, f9, bool1, bool2);
          f6 = f4 + arrayOfFloat2[(m + 5)];
          f4 = f5 + arrayOfFloat2[(m + 6)];
          f3 = f1;
          f1 = f4;
          f7 = f6;
          f5 = f6;
          f6 = f7;
          break;
          bool1 = false;
          break label2123;
        }
        f3 = arrayOfFloat2[(m + 5)];
        f6 = arrayOfFloat2[(m + 6)];
        f7 = arrayOfFloat2[(m + 0)];
        f8 = arrayOfFloat2[(m + 1)];
        f9 = arrayOfFloat2[(m + 2)];
        if (arrayOfFloat2[(m + 3)] != 0.0F)
        {
          bool1 = true;
          label2285:
          if (arrayOfFloat2[(m + 4)] == 0.0F) {
            break label2360;
          }
        }
        label2360:
        for (bool2 = true;; bool2 = false)
        {
          a(paramPath, f4, f5, f3, f6, f7, f8, f9, bool1, bool2);
          f5 = arrayOfFloat2[(m + 5)];
          f4 = arrayOfFloat2[(m + 6)];
          f3 = f1;
          f1 = f4;
          f6 = f5;
          break;
          bool1 = false;
          break label2285;
        }
        arrayOfFloat1[0] = f4;
        arrayOfFloat1[1] = f5;
        arrayOfFloat1[2] = f8;
        arrayOfFloat1[3] = f3;
        arrayOfFloat1[4] = f1;
        arrayOfFloat1[5] = f2;
        j = paramArrayOfb[k].BG;
        k += 1;
        break;
        return;
      }
    }
    
    public final void a(b paramb1, b paramb2, float paramFloat)
    {
      int i = 0;
      while (i < paramb1.BH.length)
      {
        this.BH[i] = (paramb1.BH[i] * (1.0F - paramFloat) + paramb2.BH[i] * paramFloat);
        i += 1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */