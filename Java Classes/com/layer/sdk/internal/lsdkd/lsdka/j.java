package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.a;
import com.layer.sdk.internal.lsdkd.a.d;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.internal.lsdkd.e;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkk.f.c;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.listeners.LayerProgressListener;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class j
  extends MessagePart
  implements d
{
  private static final k.a a = k.a(j.class);
  private final Object b = new Object();
  InputStream bre;
  byte[] brf;
  File brg;
  private final ConcurrentLinkedQueue<com.layer.sdk.internal.lsdkd.b> c = new ConcurrentLinkedQueue();
  private h d;
  private Uri e = null;
  private MessagePart.TransferStatus f = MessagePart.TransferStatus.COMPLETE;
  private boolean g = false;
  private Date h;
  private String i;
  private Date j;
  private Long k;
  private Long l;
  private final f<i> m = new f();
  private String n;
  private long o;
  
  public j(Uri paramUri, Long paramLong1, String paramString, Long paramLong2)
  {
    this.k = paramLong1;
    this.e = paramUri;
    this.n = paramString;
    this.o = paramLong2.longValue();
    if (this.k == null) {
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, this, null, null, null));
    }
  }
  
  public static j a(String paramString, Long paramLong)
  {
    return new j(null, null, paramString, paramLong);
  }
  
  private byte[] b(InputStream paramInputStream)
  {
    synchronized (this.b)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        com.layer.b.e.b.a(paramInputStream, localByteArrayOutputStream);
        paramInputStream = localByteArrayOutputStream.toByteArray();
        return paramInputStream;
      }
      catch (IOException paramInputStream)
      {
        if (k.a(6)) {
          k.d(a, paramInputStream.getMessage(), paramInputStream);
        }
        return null;
      }
    }
  }
  
  public static Uri c(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    List localList = paramUri.getPathSegments();
    return paramUri.buildUpon().path(TextUtils.join(File.separator, localList.subList(0, localList.size() - 2))).build();
  }
  
  private void c(String paramString)
  {
    if (this.d.i() == null) {
      throw new LayerException(LayerException.Type.NOT_AUTHENTICATED, paramString);
    }
  }
  
  public j a(File paramFile)
  {
    synchronized (this.b)
    {
      this.brf = null;
      this.bre = null;
      this.brg = paramFile;
      return this;
    }
  }
  
  public j a(InputStream paramInputStream)
  {
    synchronized (this.b)
    {
      this.brf = null;
      this.bre = paramInputStream;
      this.brg = null;
      return this;
    }
  }
  
  public j a(String paramString, Date paramDate1, Date paramDate2, MessagePart.TransferStatus paramTransferStatus, boolean paramBoolean)
  {
    synchronized (this.b)
    {
      this.i = paramString;
      this.j = paramDate1;
      this.h = paramDate2;
      this.f = paramTransferStatus;
      this.g = paramBoolean;
      return this;
    }
  }
  
  public j a(byte[] paramArrayOfByte)
  {
    synchronized (this.b)
    {
      this.brf = paramArrayOfByte;
      this.bre = null;
      this.brg = null;
      return this;
    }
  }
  
  public Queue<com.layer.sdk.internal.lsdkd.b> a()
  {
    return this.c;
  }
  
  public void a(Uri paramUri)
  {
    synchronized (this.b)
    {
      this.e = paramUri;
      return;
    }
  }
  
  public void a(com.layer.sdk.internal.lsdkd.b paramb)
  {
    a locala = (a)paramb.b();
    if (locala == null)
    {
      switch (3.bqe[paramb.getChangeType().ordinal()])
      {
      default: 
        return;
      case 1: 
        c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, this, null, null, null));
        return;
      case 2: 
        throw new IllegalArgumentException("Cannot UPDATE without an attribute");
      }
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.DELETE, this, null, null, null));
      return;
    }
    if (!paramb.getChangeType().equals(LayerChange.Type.UPDATE)) {
      throw new IllegalArgumentException("Cannot " + paramb.getChangeType() + " attributes: " + locala);
    }
    paramb = paramb.getNewValue();
    switch (3.b[locala.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Cannot update " + locala);
    case 1: 
      b((MessagePart.TransferStatus)paramb);
      return;
    case 2: 
      a((Boolean)paramb);
      return;
    case 3: 
      c((Date)paramb);
      return;
    case 4: 
      b((String)paramb);
      return;
    case 5: 
      d((Date)paramb);
      return;
    case 6: 
      b((byte[])paramb);
      return;
    }
    b((File)paramb);
  }
  
  public void a(h paramh)
  {
    synchronized (this.b)
    {
      this.d = paramh;
      this.m.a(paramh);
      return;
    }
  }
  
  public void a(a parama, Object paramObject1, Object paramObject2)
  {
    c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.UPDATE, this, parama, paramObject1, paramObject2));
  }
  
  public void a(MessagePart.TransferStatus paramTransferStatus)
  {
    synchronized (this.b)
    {
      this.f = paramTransferStatus;
      return;
    }
  }
  
  public void a(Boolean paramBoolean)
  {
    synchronized (this.b)
    {
      Boolean localBoolean = Boolean.valueOf(k());
      if (com.layer.sdk.internal.lsdkd.b.a(localBoolean, paramBoolean))
      {
        d(paramBoolean.booleanValue());
        a(a.c, localBoolean, paramBoolean);
      }
      return;
    }
  }
  
  public void a(Long paramLong)
  {
    synchronized (this.b)
    {
      this.k = paramLong;
      return;
    }
  }
  
  public void a(String paramString)
  {
    synchronized (this.b)
    {
      this.i = paramString;
      return;
    }
  }
  
  public void a(Date paramDate)
  {
    synchronized (this.b)
    {
      this.j = paramDate;
      return;
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b(Uri paramUri)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("Cannot set messagePart message to null");
    }
    synchronized (this.b)
    {
      this.m.a(paramUri);
      return;
    }
  }
  
  public void b(com.layer.sdk.internal.lsdkd.b paramb)
  {
    c(new com.layer.sdk.internal.lsdkd.b(paramb.getChangeType(), this, paramb.b(), paramb.getOldValue(), paramb.getNewValue()));
  }
  
  public void b(MessagePart.TransferStatus paramTransferStatus)
  {
    synchronized (this.b)
    {
      MessagePart.TransferStatus localTransferStatus = getTransferStatus();
      if (com.layer.sdk.internal.lsdkd.b.a(localTransferStatus, paramTransferStatus))
      {
        a(paramTransferStatus);
        a(a.b, localTransferStatus, paramTransferStatus);
      }
      return;
    }
  }
  
  public void b(File paramFile)
  {
    synchronized (this.b)
    {
      File localFile = f();
      if (com.layer.sdk.internal.lsdkd.b.a(localFile, paramFile))
      {
        a(paramFile);
        a(a.h, localFile, paramFile);
      }
      return;
    }
  }
  
  public void b(Long paramLong)
  {
    synchronized (this.b)
    {
      this.l = paramLong;
      return;
    }
  }
  
  public void b(String paramString)
  {
    synchronized (this.b)
    {
      String str = n();
      if (com.layer.sdk.internal.lsdkd.b.a(str, paramString))
      {
        a(paramString);
        a(a.e, str, paramString);
      }
      return;
    }
  }
  
  public void b(Date paramDate)
  {
    synchronized (this.b)
    {
      this.h = paramDate;
      return;
    }
  }
  
  public void b(boolean paramBoolean) {}
  
  public void b(byte[] paramArrayOfByte)
  {
    synchronized (this.b)
    {
      byte[] arrayOfByte = g();
      if (com.layer.sdk.internal.lsdkd.b.a(arrayOfByte, paramArrayOfByte))
      {
        a(paramArrayOfByte);
        a(a.g, arrayOfByte, paramArrayOfByte);
      }
      return;
    }
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        if (i() == null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void c(com.layer.sdk.internal.lsdkd.b paramb)
  {
    synchronized (this.b)
    {
      this.c.add(paramb);
      return;
    }
  }
  
  public void c(Date paramDate)
  {
    synchronized (this.b)
    {
      Date localDate = l();
      if (com.layer.sdk.internal.lsdkd.b.a(localDate, paramDate))
      {
        b(paramDate);
        a(a.d, localDate, paramDate);
      }
      return;
    }
  }
  
  public boolean c()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        Message localMessage = getMessage();
        if ((localMessage != null) && (((i)localMessage).c()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public byte[] c(boolean paramBoolean)
  {
    Object localObject2;
    synchronized (this.b)
    {
      if (this.brf != null)
      {
        localObject2 = this.brf;
        return (byte[])localObject2;
      }
      localObject2 = this.brg;
      if (localObject2 == null) {}
    }
    if ((paramBoolean) && (this.bre != null))
    {
      byte[] arrayOfByte = b(this.bre);
      return arrayOfByte;
    }
    return null;
  }
  
  public void d(Date paramDate)
  {
    synchronized (this.b)
    {
      Date localDate = o();
      if (com.layer.sdk.internal.lsdkd.b.a(localDate, paramDate))
      {
        a(paramDate);
        a(a.f, localDate, paramDate);
      }
      return;
    }
  }
  
  public void d(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      this.g = paramBoolean;
      return;
    }
  }
  
  public boolean d()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        Message localMessage = getMessage();
        if ((localMessage != null) && (((i)localMessage).d()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void deleteLocalContent()
  {
    this.d.n().a(new f.c()
    {
      public final void a()
      {
        j.a(j.this, "Cannot delete message part data when no user is authenticated.");
      }
    });
  }
  
  public void download(final LayerProgressListener paramLayerProgressListener)
  {
    this.d.n().a(new f.c()
    {
      public final void a()
      {
        j.a(j.this, "Cannot download message parts when no user is authenticated.");
      }
    });
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (j)paramObject;
      if (this.o != ((j)paramObject).o) {
        return false;
      }
      if (this.f != ((j)paramObject).f) {
        return false;
      }
      if (this.j != null)
      {
        if (this.j.equals(((j)paramObject).j)) {}
      }
      else {
        while (((j)paramObject).j != null) {
          return false;
        }
      }
      if (this.k != null)
      {
        if (this.k.equals(((j)paramObject).k)) {}
      }
      else {
        while (((j)paramObject).k != null) {
          return false;
        }
      }
      if (this.brg != null)
      {
        if (this.brg.equals(((j)paramObject).brg)) {}
      }
      else {
        while (((j)paramObject).brg != null) {
          return false;
        }
      }
      if (!Arrays.equals(this.brf, ((j)paramObject).brf)) {
        return false;
      }
      if (this.bre != null)
      {
        if (this.bre.equals(((j)paramObject).bre)) {}
      }
      else {
        while (((j)paramObject).bre != null) {
          return false;
        }
      }
      if (this.n != null)
      {
        if (this.n.equals(((j)paramObject).n)) {}
      }
      else {
        while (((j)paramObject).n != null) {
          return false;
        }
      }
      if (this.i == null) {
        break;
      }
    } while (this.i.equals(((j)paramObject).i));
    for (;;)
    {
      return false;
      if (((j)paramObject).i == null) {
        break;
      }
    }
  }
  
  public File f()
  {
    return this.brg;
  }
  
  public byte[] g()
  {
    synchronized (this.b)
    {
      byte[] arrayOfByte = this.brf;
      return arrayOfByte;
    }
  }
  
  public byte[] getData()
  {
    synchronized (this.b)
    {
      if ((this.bre != null) && (b())) {
        throw new LayerException(LayerException.Type.MESSAGE_PART_IS_NEW, "Cannot get message part data for message parts constructed with streams before sending.");
      }
    }
    if (!isContentReady())
    {
      if (k.a(2)) {
        k.a(a, "Content is not ready.");
      }
      return null;
    }
    byte[] arrayOfByte = c(false);
    return arrayOfByte;
  }
  
  public InputStream getDataStream()
  {
    synchronized (this.b)
    {
      if ((this.bre != null) && (b())) {
        throw new LayerException(LayerException.Type.MESSAGE_PART_IS_NEW, "Cannot get message part data for message parts constructed with streams before sending.");
      }
    }
    InputStream localInputStream = h();
    return localInputStream;
  }
  
  public Uri getId()
  {
    synchronized (this.b)
    {
      Uri localUri = this.e;
      return localUri;
    }
  }
  
  public Message getMessage()
  {
    synchronized (this.b)
    {
      Message localMessage = (Message)this.m.b();
      return localMessage;
    }
  }
  
  public String getMimeType()
  {
    synchronized (this.b)
    {
      String str = this.n;
      return str;
    }
  }
  
  public long getSize()
  {
    synchronized (this.b)
    {
      long l1 = this.o;
      return l1;
    }
  }
  
  public MessagePart.TransferStatus getTransferStatus()
  {
    synchronized (this.b)
    {
      MessagePart.TransferStatus localTransferStatus = this.f;
      return localTransferStatus;
    }
  }
  
  public InputStream h()
  {
    Object localObject2;
    synchronized (this.b)
    {
      if (this.brf != null)
      {
        localObject2 = new ByteArrayInputStream(this.brf);
        return (InputStream)localObject2;
      }
      localObject2 = this.brg;
      if (localObject2 == null) {
        break label84;
      }
    }
    try
    {
      localObject2 = new FileInputStream(this.brg);
      return (InputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      if (!k.a(6)) {
        break label80;
      }
      k.d(a, localFileNotFoundException.getMessage(), localFileNotFoundException);
      return null;
    }
    localObject3 = finally;
    throw ((Throwable)localObject3);
    label80:
    label84:
    if (this.bre != null)
    {
      InputStream localInputStream = this.bre;
      return localInputStream;
    }
    return null;
  }
  
  public Long i()
  {
    synchronized (this.b)
    {
      Long localLong = this.k;
      return localLong;
    }
  }
  
  public boolean isContentReady()
  {
    for (boolean bool = true;; bool = false) {
      synchronized (this.b)
      {
        if (this.brf != null) {
          return true;
        }
        if (b()) {
          return false;
        }
        if (k()) {
          return false;
        }
        if (this.brg == null) {
          break;
        }
        if ((this.brg.exists()) && (this.brg.length() == this.o)) {
          return bool;
        }
      }
    }
    return false;
  }
  
  public Long j()
  {
    synchronized (this.b)
    {
      Long localLong = this.l;
      return localLong;
    }
  }
  
  public boolean k()
  {
    synchronized (this.b)
    {
      boolean bool = this.g;
      return bool;
    }
  }
  
  public Date l()
  {
    synchronized (this.b)
    {
      Date localDate = this.h;
      return localDate;
    }
  }
  
  public Uri m()
  {
    synchronized (this.b)
    {
      Uri localUri = c(this.e);
      return localUri;
    }
  }
  
  public String n()
  {
    return this.i;
  }
  
  public Date o()
  {
    return this.j;
  }
  
  public int p()
  {
    return this.f.getValue();
  }
  
  public h q()
  {
    return this.d;
  }
  
  public boolean r()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        Message localMessage = getMessage();
        if ((localMessage != null) && (localMessage.isDeleted()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public String toString()
  {
    return "MessagePartImpl{mDatabaseId=" + this.k + ", mId=" + this.e + ", mMimeType='" + this.n + '\'' + ", mSize=" + this.o + ", mUrlExpiration=" + this.j + ", mTransferStatus= " + this.f.toString() + ", mPruned=" + this.g + ", mInputStream=" + this.bre + ", mInlineData=" + Arrays.toString(this.brf) + ", mFileData=" + this.brg + '}';
  }
  
  public static enum a
    implements e
  {
    final a bri;
    final boolean brj;
    final String i;
    
    private a(String paramString, a parama, boolean paramBoolean)
    {
      this.i = paramString;
      this.bri = parama;
      this.brj = paramBoolean;
    }
    
    public final String a()
    {
      return this.i;
    }
    
    public final a b()
    {
      return this.bri;
    }
    
    public final boolean c()
    {
      return this.brj;
    }
    
    public final String toString()
    {
      return this.i;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */