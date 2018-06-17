package com.c.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video.Thumbnails;
import java.io.IOException;

final class o
  extends g
{
  private static final String[] bNK = { "orientation" };
  
  o(Context paramContext)
  {
    super(paramContext);
  }
  
  /* Error */
  private static int a(ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: getstatic 17	com/c/a/o:bNK	[Ljava/lang/String;
    //   5: aconst_null
    //   6: aconst_null
    //   7: aconst_null
    //   8: invokevirtual 31	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   11: astore_0
    //   12: aload_0
    //   13: ifnull +16 -> 29
    //   16: aload_0
    //   17: invokeinterface 37 1 0
    //   22: istore 4
    //   24: iload 4
    //   26: ifne +17 -> 43
    //   29: aload_0
    //   30: ifnull +9 -> 39
    //   33: aload_0
    //   34: invokeinterface 40 1 0
    //   39: iconst_0
    //   40: istore_2
    //   41: iload_2
    //   42: ireturn
    //   43: aload_0
    //   44: iconst_0
    //   45: invokeinterface 44 2 0
    //   50: istore_3
    //   51: iload_3
    //   52: istore_2
    //   53: aload_0
    //   54: ifnull -13 -> 41
    //   57: aload_0
    //   58: invokeinterface 40 1 0
    //   63: iload_3
    //   64: ireturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_0
    //   68: aload_0
    //   69: ifnull +9 -> 78
    //   72: aload_0
    //   73: invokeinterface 40 1 0
    //   78: iconst_0
    //   79: ireturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_0
    //   83: aload_0
    //   84: ifnull +9 -> 93
    //   87: aload_0
    //   88: invokeinterface 40 1 0
    //   93: aload_1
    //   94: athrow
    //   95: astore_1
    //   96: goto -13 -> 83
    //   99: astore_1
    //   100: goto -32 -> 68
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	paramContentResolver	ContentResolver
    //   0	103	1	paramUri	Uri
    //   40	13	2	i	int
    //   50	14	3	j	int
    //   22	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	12	65	java/lang/RuntimeException
    //   0	12	80	finally
    //   16	24	95	finally
    //   43	51	95	finally
    //   16	24	99	java/lang/RuntimeException
    //   43	51	99	java/lang/RuntimeException
  }
  
  public final y.a a(w paramw, int paramInt)
    throws IOException
  {
    ContentResolver localContentResolver = this.context.getContentResolver();
    int i = a(localContentResolver, paramw.uri);
    Object localObject = localContentResolver.getType(paramw.uri);
    int j;
    int k;
    if ((localObject != null) && (((String)localObject).startsWith("video/")))
    {
      paramInt = 1;
      if (!paramw.Aw()) {
        break label285;
      }
      j = paramw.bOG;
      k = paramw.bOH;
      if ((j > a.bNL.width) || (k > a.bNL.height)) {
        break label128;
      }
      localObject = a.bNL;
    }
    for (;;)
    {
      if ((paramInt != 0) || (localObject != a.bNN)) {
        break label166;
      }
      return new y.a(null, b(paramw), t.d.bOo, i);
      paramInt = 0;
      break;
      label128:
      if ((j <= a.bNM.width) && (k <= a.bNM.height)) {
        localObject = a.bNM;
      } else {
        localObject = a.bNN;
      }
    }
    label166:
    long l = ContentUris.parseId(paramw.uri);
    BitmapFactory.Options localOptions = d(paramw);
    localOptions.inJustDecodeBounds = true;
    a(paramw.bOG, paramw.bOH, ((a)localObject).width, ((a)localObject).height, localOptions, paramw);
    if (paramInt != 0) {
      if (localObject == a.bNN) {
        paramInt = 1;
      }
    }
    for (localObject = MediaStore.Video.Thumbnails.getThumbnail(localContentResolver, l, paramInt, localOptions);; localObject = MediaStore.Images.Thumbnails.getThumbnail(localContentResolver, l, ((a)localObject).bNO, localOptions))
    {
      if (localObject == null) {
        break label285;
      }
      return new y.a((Bitmap)localObject, null, t.d.bOo, i);
      paramInt = ((a)localObject).bNO;
      break;
    }
    label285:
    return new y.a(null, b(paramw), t.d.bOo, i);
  }
  
  public final boolean a(w paramw)
  {
    paramw = paramw.uri;
    return ("content".equals(paramw.getScheme())) && ("media".equals(paramw.getAuthority()));
  }
  
  static enum a
  {
    final int bNO;
    final int height;
    final int width;
    
    private a(int paramInt1, int paramInt2, int paramInt3)
    {
      this.bNO = paramInt1;
      this.width = paramInt2;
      this.height = paramInt3;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */