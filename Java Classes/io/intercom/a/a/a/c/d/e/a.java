package io.intercom.a.a.a.c.d.e;

import android.content.Context;
import android.graphics.Bitmap.Config;
import android.util.Log;
import io.intercom.a.a.a.c.f;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.c.k;
import io.intercom.a.a.a.c.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.List;
import java.util.Queue;

public final class a
  implements k<ByteBuffer, c>
{
  private static final a cOt = new a();
  private static final b cOu = new b();
  private final List<f> cID;
  private final b cOv;
  private final a cOw;
  private final b cOx;
  private final Context context;
  
  public a(Context paramContext, List<f> paramList, io.intercom.a.a.a.c.b.a.e parame, io.intercom.a.a.a.c.b.a.b paramb)
  {
    this(paramContext, paramList, parame, paramb, cOu, cOt);
  }
  
  private a(Context paramContext, List<f> paramList, io.intercom.a.a.a.c.b.a.e parame, io.intercom.a.a.a.c.b.a.b paramb, b paramb1, a parama)
  {
    this.context = paramContext.getApplicationContext();
    this.cID = paramList;
    this.cOw = parama;
    this.cOx = new b(parame, paramb);
    this.cOv = paramb1;
  }
  
  private e a(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, j paramj)
  {
    Object localObject2 = null;
    io.intercom.a.a.a.b.d locald = this.cOv.b(paramByteBuffer);
    long l;
    try
    {
      l = io.intercom.a.a.a.i.d.JQ();
      if (locald.cHk == null) {
        throw new IllegalStateException("You must call setData() before parseHeader()");
      }
    }
    finally
    {
      this.cOv.a(locald);
    }
    if (!locald.HR())
    {
      locald.readHeader();
      if (!locald.HR())
      {
        locald.HN();
        if (locald.cHl.cHb < 0) {
          locald.cHl.status = 1;
        }
      }
    }
    io.intercom.a.a.a.b.c localc = locald.cHl;
    Object localObject1 = localObject2;
    if (localc.cHb > 0)
    {
      i = localc.status;
      if (i != 0) {
        localObject1 = localObject2;
      }
    }
    else
    {
      this.cOv.a(locald);
      return (e)localObject1;
    }
    if (paramj.a(i.cNP) == io.intercom.a.a.a.c.b.cHK)
    {
      paramj = Bitmap.Config.RGB_565;
      label160:
      i = Math.min(localc.height / paramInt2, localc.width / paramInt1);
      if (i != 0) {
        break label410;
      }
    }
    label410:
    for (int i = 0;; i = Integer.highestOneBit(i))
    {
      i = Math.max(1, i);
      if ((Log.isLoggable("BufferGifDecoder", 2)) && (i > 1)) {
        Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + i + ", target dimens: [" + paramInt1 + "x" + paramInt2 + "], actual dimens: [" + localc.width + "x" + localc.height + "]");
      }
      paramByteBuffer = new io.intercom.a.a.a.b.e(this.cOx, localc, paramByteBuffer, i);
      paramByteBuffer.a(paramj);
      paramByteBuffer.advance();
      paramj = paramByteBuffer.HM();
      localObject1 = localObject2;
      if (paramj == null) {
        break;
      }
      localObject1 = io.intercom.a.a.a.c.d.b.IU();
      paramByteBuffer = new c(this.context, paramByteBuffer, (m)localObject1, paramInt1, paramInt2, paramj);
      if (Log.isLoggable("BufferGifDecoder", 2)) {
        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + io.intercom.a.a.a.i.d.V(l));
      }
      localObject1 = new e(paramByteBuffer);
      break;
      paramj = Bitmap.Config.ARGB_8888;
      break label160;
    }
  }
  
  static final class a {}
  
  static final class b
  {
    private final Queue<io.intercom.a.a.a.b.d> pool = io.intercom.a.a.a.i.i.ft(0);
    
    final void a(io.intercom.a.a.a.b.d paramd)
    {
      try
      {
        paramd.cHk = null;
        paramd.cHl = null;
        this.pool.offer(paramd);
        return;
      }
      finally
      {
        paramd = finally;
        throw paramd;
      }
    }
    
    final io.intercom.a.a.a.b.d b(ByteBuffer paramByteBuffer)
    {
      try
      {
        io.intercom.a.a.a.b.d locald2 = (io.intercom.a.a.a.b.d)this.pool.poll();
        io.intercom.a.a.a.b.d locald1 = locald2;
        if (locald2 == null) {
          locald1 = new io.intercom.a.a.a.b.d();
        }
        locald1.cHk = null;
        Arrays.fill(locald1.cHj, (byte)0);
        locald1.cHl = new io.intercom.a.a.a.b.c();
        locald1.cHm = 0;
        locald1.cHk = paramByteBuffer.asReadOnlyBuffer();
        locald1.cHk.position(0);
        locald1.cHk.order(ByteOrder.LITTLE_ENDIAN);
        return locald1;
      }
      finally {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/e/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */