package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.i;
import io.intercom.a.a.a.c.i.a;
import io.intercom.a.a.a.c.k;
import java.nio.ByteBuffer;

public final class v
  implements k<ParcelFileDescriptor, Bitmap>
{
  public static final i<Long> cOn = i.a("io.intercom.com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", Long.valueOf(-1L), new i.a()
  {
    private final ByteBuffer aZN = ByteBuffer.allocate(8);
  });
  public static final i<Integer> cOo = i.a("io.intercom.com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", null, new i.a()
  {
    private final ByteBuffer aZN = ByteBuffer.allocate(4);
  });
  private static final a cOp = new a();
  private final e cFr;
  private final a cOq;
  
  public v(e parame)
  {
    this(parame, cOp);
  }
  
  private v(e parame, a parama)
  {
    this.cFr = parame;
    this.cOq = parama;
  }
  
  /* Error */
  private io.intercom.a.a.a.c.b.u<Bitmap> a(ParcelFileDescriptor paramParcelFileDescriptor, io.intercom.a.a.a.c.j paramj)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_2
    //   1: getstatic 46	io/intercom/a/a/a/c/d/a/v:cOn	Lio/intercom/a/a/a/c/i;
    //   4: invokevirtual 74	io/intercom/a/a/a/c/j:a	(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    //   7: checkcast 32	java/lang/Long
    //   10: invokevirtual 78	java/lang/Long:longValue	()J
    //   13: lstore_3
    //   14: lload_3
    //   15: lconst_0
    //   16: lcmp
    //   17: ifge +35 -> 52
    //   20: lload_3
    //   21: ldc2_w 29
    //   24: lcmp
    //   25: ifeq +27 -> 52
    //   28: new 80	java/lang/IllegalArgumentException
    //   31: dup
    //   32: new 82	java/lang/StringBuilder
    //   35: dup
    //   36: ldc 84
    //   38: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: lload_3
    //   42: invokevirtual 91	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   45: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokespecial 96	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   51: athrow
    //   52: aload_2
    //   53: getstatic 51	io/intercom/a/a/a/c/d/a/v:cOo	Lio/intercom/a/a/a/c/i;
    //   56: invokevirtual 74	io/intercom/a/a/a/c/j:a	(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    //   59: checkcast 98	java/lang/Integer
    //   62: astore_2
    //   63: new 100	android/media/MediaMetadataRetriever
    //   66: dup
    //   67: invokespecial 101	android/media/MediaMetadataRetriever:<init>	()V
    //   70: astore 5
    //   72: aload 5
    //   74: aload_1
    //   75: invokevirtual 107	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   78: invokevirtual 111	android/media/MediaMetadataRetriever:setDataSource	(Ljava/io/FileDescriptor;)V
    //   81: lload_3
    //   82: ldc2_w 29
    //   85: lcmp
    //   86: ifne +27 -> 113
    //   89: aload 5
    //   91: invokevirtual 115	android/media/MediaMetadataRetriever:getFrameAtTime	()Landroid/graphics/Bitmap;
    //   94: astore_2
    //   95: aload 5
    //   97: invokevirtual 118	android/media/MediaMetadataRetriever:release	()V
    //   100: aload_1
    //   101: invokevirtual 121	android/os/ParcelFileDescriptor:close	()V
    //   104: aload_2
    //   105: aload_0
    //   106: getfield 62	io/intercom/a/a/a/c/d/a/v:cFr	Lio/intercom/a/a/a/c/b/a/e;
    //   109: invokestatic 126	io/intercom/a/a/a/c/d/a/d:a	(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;
    //   112: areturn
    //   113: aload_2
    //   114: ifnonnull +13 -> 127
    //   117: aload 5
    //   119: lload_3
    //   120: invokevirtual 129	android/media/MediaMetadataRetriever:getFrameAtTime	(J)Landroid/graphics/Bitmap;
    //   123: astore_2
    //   124: goto -29 -> 95
    //   127: aload 5
    //   129: lload_3
    //   130: aload_2
    //   131: invokevirtual 133	java/lang/Integer:intValue	()I
    //   134: invokevirtual 136	android/media/MediaMetadataRetriever:getFrameAtTime	(JI)Landroid/graphics/Bitmap;
    //   137: astore_2
    //   138: goto -43 -> 95
    //   141: astore_1
    //   142: new 67	java/io/IOException
    //   145: dup
    //   146: aload_1
    //   147: invokespecial 139	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   150: athrow
    //   151: astore_1
    //   152: aload 5
    //   154: invokevirtual 118	android/media/MediaMetadataRetriever:release	()V
    //   157: aload_1
    //   158: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	this	v
    //   0	159	1	paramParcelFileDescriptor	ParcelFileDescriptor
    //   0	159	2	paramj	io.intercom.a.a.a.c.j
    //   13	117	3	l	long
    //   70	83	5	localMediaMetadataRetriever	android.media.MediaMetadataRetriever
    // Exception table:
    //   from	to	target	type
    //   72	81	141	java/lang/RuntimeException
    //   89	95	141	java/lang/RuntimeException
    //   117	124	141	java/lang/RuntimeException
    //   127	138	141	java/lang/RuntimeException
    //   72	81	151	finally
    //   89	95	151	finally
    //   117	124	151	finally
    //   127	138	151	finally
    //   142	151	151	finally
  }
  
  static final class a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */