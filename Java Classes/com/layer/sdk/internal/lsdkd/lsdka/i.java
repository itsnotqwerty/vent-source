package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import com.layer.sdk.LayerClient.DeletionMode;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.a;
import com.layer.sdk.internal.lsdkd.a.c;
import com.layer.sdk.internal.lsdkd.a.d;
import com.layer.sdk.internal.lsdkd.b;
import com.layer.sdk.internal.lsdkd.d;
import com.layer.sdk.internal.lsdkd.m;
import com.layer.sdk.internal.lsdkd.n;
import com.layer.sdk.internal.lsdkk.f.b;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Message.RecipientStatus;
import com.layer.sdk.messaging.MessageOptions;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class i
  implements d, Message
{
  private static final k.a d = k.a(i.class);
  protected final Object a = new Object();
  protected com.layer.sdk.internal.lsdkd.h b;
  protected Map<String, l> c;
  private final ConcurrentLinkedQueue<b> e;
  private final AtomicBoolean f = new AtomicBoolean(false);
  private Long g;
  private Uri h;
  private Integer i = null;
  private long j;
  private Date k;
  private Date l;
  private boolean m = false;
  private MessageOptions n;
  private Long o = null;
  private Long p;
  private final f<c> q = new f();
  private final g<j> r = new g();
  private final f<e> s = new f();
  private Set<h> t;
  private boolean u = false;
  private boolean v = false;
  private String w;
  private String x;
  private boolean y = true;
  
  public i(Uri paramUri, Long paramLong)
  {
    this(paramUri, paramLong, true);
  }
  
  public i(Uri paramUri, Long paramLong, boolean paramBoolean)
  {
    this.h = paramUri;
    this.o = paramLong;
    this.y = paramBoolean;
    this.e = new ConcurrentLinkedQueue();
    this.c = new HashMap();
    this.j = Long.MAX_VALUE;
    if (this.o == null) {
      c(new b(LayerChange.Type.INSERT, this, null, null, null));
    }
  }
  
  public i(MessageOptions paramMessageOptions, List<j> paramList)
  {
    this(m.b(), null);
    MessageOptions localMessageOptions = paramMessageOptions;
    if (paramMessageOptions == null) {
      localMessageOptions = new MessageOptions();
    }
    this.n = localMessageOptions;
    a(paramList);
    f();
  }
  
  private void a(a parama, Object paramObject1, Object paramObject2)
  {
    c(new b(LayerChange.Type.UPDATE, this, parama, paramObject1, paramObject2));
  }
  
  private void b(String paramString)
  {
    if (this.b.i() == null) {
      throw new LayerException(LayerException.Type.NOT_AUTHENTICATED, paramString);
    }
  }
  
  private void v()
  {
    JSONObject localJSONObject = n.a(this.n.getDefaultPushNotificationPayload(), this.n.getUserPushNotificationPayloads());
    if (localJSONObject != null)
    {
      h localh = new h();
      localh.a(h.b.b);
      localh.a(h.a.a);
      localh.a("layer-push-notification");
      localh.b(localJSONObject.toString());
      a(localh);
    }
  }
  
  private void w()
  {
    synchronized (this.a)
    {
      if (this.t != null) {
        this.t.clear();
      }
      return;
    }
  }
  
  private UUID x()
  {
    synchronized (this.a)
    {
      Object localObject2 = (c)this.q.b();
      if (localObject2 != null)
      {
        localObject2 = ((c)localObject2).j();
        return (UUID)localObject2;
      }
      return null;
    }
  }
  
  public Message.RecipientStatus a(String paramString)
  {
    c localc;
    synchronized (this.a)
    {
      if (b()) {
        return null;
      }
      localc = (c)getConversation();
      if ((localc != null) && (!localc.isReadReceiptsEnabled())) {
        return null;
      }
      if (p() == null)
      {
        paramString = Message.RecipientStatus.PENDING;
        return paramString;
      }
    }
    if ((localc != null) && (!localc.k().contains(paramString)))
    {
      if (k.a(2)) {
        k.a(d, "Provided userId is not part of the conversation: " + paramString);
      }
      return null;
    }
    if ((o() != null) && (o().equals(paramString)))
    {
      paramString = Message.RecipientStatus.READ;
      return paramString;
    }
    if (!this.c.containsKey(paramString))
    {
      paramString = Message.RecipientStatus.SENT;
      return paramString;
    }
    paramString = ((l)this.c.get(paramString)).d();
    return paramString;
  }
  
  public Queue<b> a()
  {
    return this.e;
  }
  
  public void a(long paramLong)
  {
    synchronized (this.a)
    {
      this.j = paramLong;
      return;
    }
  }
  
  public void a(Uri paramUri)
  {
    if (paramUri == null) {
      throw new LayerException(LayerException.Type.NULL_CONVERSATION, "Cannot set message conversation to null");
    }
    synchronized (this.a)
    {
      this.q.a(paramUri);
      return;
    }
  }
  
  public void a(b paramb)
  {
    a locala = (a)paramb.b();
    switch (3.bqK[paramb.getChangeType().ordinal()])
    {
    }
    do
    {
      paramb = paramb.getNewValue();
      switch (3.brd[locala.ordinal()])
      {
      default: 
        throw new LayerException(LayerException.Type.CANNOT_UPDATE_ATTRIBUTE, "Cannot update " + locala);
        if (locala == null) {
          c(new b(LayerChange.Type.INSERT, this, null, null, null));
        }
      case 4: 
      case 5: 
        return;
        throw new LayerException(LayerException.Type.NOT_UPDATE, "Cannot " + paramb.getChangeType() + " attributes: " + locala);
      }
    } while (locala != null);
    throw new LayerException(LayerException.Type.UPDATE_WITHOUT_ATTRIBUTE, "Cannot UPDATE without an attribute");
    d((Long)paramb);
    return;
    a(((Boolean)paramb).booleanValue());
    return;
    b(((Boolean)paramb).booleanValue());
    return;
    c((Date)paramb);
    return;
    b((Map)paramb);
    return;
    d((Date)paramb);
    return;
    b((Integer)paramb);
  }
  
  public void a(com.layer.sdk.internal.lsdkd.h paramh)
  {
    synchronized (this.a)
    {
      this.b = paramh;
      this.q.a(paramh);
      this.r.a(paramh);
      this.s.a(paramh);
      return;
    }
  }
  
  public void a(c paramc)
  {
    if (paramc == null) {
      throw new IllegalStateException("Null conversation: " + this);
    }
    synchronized (this.a)
    {
      this.q.a(paramc);
      this.p = paramc.g();
      return;
    }
  }
  
  public void a(h paramh)
  {
    synchronized (this.a)
    {
      if (this.t == null) {
        this.t = new HashSet();
      }
      this.t.add(paramh);
      return;
    }
  }
  
  public void a(Integer paramInteger)
  {
    synchronized (this.a)
    {
      this.i = paramInteger;
      return;
    }
  }
  
  public void a(Iterable<h> paramIterable)
  {
    synchronized (this.a)
    {
      this.t = new HashSet();
      paramIterable = paramIterable.iterator();
      if (paramIterable.hasNext())
      {
        h localh = (h)paramIterable.next();
        this.t.add(localh);
      }
    }
  }
  
  public void a(Long paramLong)
  {
    this.p = paramLong;
  }
  
  public void a(String paramString, Message.RecipientStatus paramRecipientStatus, Integer paramInteger)
  {
    for (;;)
    {
      synchronized (this.a)
      {
        HashMap localHashMap1 = new HashMap(this.c);
        HashMap localHashMap2 = new HashMap(localHashMap1);
        if (localHashMap1.get(paramString) != null)
        {
          if (((l)localHashMap2.get(paramString)).d() == paramRecipientStatus) {
            break label135;
          }
          break label129;
          paramRecipientStatus = new l(null, h(), paramString, paramRecipientStatus, paramInteger);
          localHashMap2.put(paramString, paramRecipientStatus);
          this.c.put(paramString, paramRecipientStatus);
          if (i1 != 0) {
            a(a.i, localHashMap1, localHashMap2);
          }
          return;
        }
      }
      label129:
      int i1 = 1;
      continue;
      label135:
      i1 = 0;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    synchronized (this.a)
    {
      this.w = paramString1;
      this.x = paramString2;
      if (paramString1 != null) {
        this.s.a(m.c(paramString1));
      }
      return;
    }
  }
  
  public void a(Date paramDate)
  {
    synchronized (this.a)
    {
      this.k = paramDate;
      return;
    }
  }
  
  public void a(List<j> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      throw new IllegalStateException("Null parts: " + this);
    }
    synchronized (this.a)
    {
      if (!this.r.isEmpty()) {
        throw new IllegalStateException("Parts already set: " + this);
      }
    }
    Iterator localIterator = paramList.iterator();
    int i1 = 0;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        localj.b(getId());
        if (localj.getId() == null) {
          localj.a(m.a(getId(), Integer.valueOf(i1)));
        }
      }
      else
      {
        this.r.b(paramList);
        return;
      }
      i1 += 1;
    }
  }
  
  public void a(Map<String, l> paramMap)
  {
    synchronized (this.a)
    {
      this.c = paramMap;
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (this.a)
    {
      boolean bool1 = isDeleted();
      boolean bool2 = c();
      if (bool2 != paramBoolean)
      {
        c(paramBoolean);
        a(a.d, Boolean.valueOf(bool2), Boolean.valueOf(paramBoolean));
      }
      if ((bool1) || (!paramBoolean)) {
        break label152;
      }
      Iterator localIterator = this.r.iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (localj != null) {
          localj.c(new b(LayerChange.Type.DELETE, localj, null, null, null));
        }
      }
    }
    a(a.c, Boolean.valueOf(false), Boolean.valueOf(true));
    c(new b(LayerChange.Type.DELETE, this, null, null, null));
    label152:
  }
  
  public void b(b paramb)
  {
    boolean bool2 = true;
    if (paramb.getChangeType() == LayerChange.Type.DELETE)
    {
      c(new b(LayerChange.Type.UPDATE, this, a.c, Boolean.valueOf(false), Boolean.valueOf(true)));
      c(new b(LayerChange.Type.DELETE, this, null, null, null));
    }
    do
    {
      return;
      c(new b(paramb.getChangeType(), this, paramb.b(), paramb.getOldValue(), paramb.getNewValue()));
    } while (!paramb.getChangeType().equals(LayerChange.Type.UPDATE));
    switch (3.brd[((a)paramb.b()).ordinal()])
    {
    default: 
      return;
    }
    LayerChange.Type localType = LayerChange.Type.UPDATE;
    a locala = a.f;
    boolean bool1;
    if (paramb.getOldValue() != null)
    {
      bool1 = true;
      if (paramb.getNewValue() == null) {
        break label189;
      }
    }
    for (;;)
    {
      c(new b(localType, this, locala, Boolean.valueOf(bool1), Boolean.valueOf(bool2)));
      return;
      bool1 = false;
      break;
      label189:
      bool2 = false;
    }
  }
  
  public void b(Integer paramInteger)
  {
    synchronized (this.a)
    {
      Integer localInteger = p();
      if (b.a(localInteger, paramInteger))
      {
        a(paramInteger);
        a(a.k, localInteger, paramInteger);
      }
      return;
    }
  }
  
  public void b(Long paramLong)
  {
    synchronized (this.a)
    {
      this.o = paramLong;
      Iterator localIterator = this.c.entrySet().iterator();
      if (localIterator.hasNext()) {
        ((l)((Map.Entry)localIterator.next()).getValue()).b(paramLong);
      }
    }
  }
  
  public void b(Date paramDate)
  {
    synchronized (this.a)
    {
      this.l = paramDate;
      return;
    }
  }
  
  public void b(List<Uri> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      throw new IllegalStateException("Cannot set parts to null: " + this);
    }
    synchronized (this.a)
    {
      if (!this.r.isEmpty()) {
        throw new IllegalStateException("Message parts not empty");
      }
    }
    this.r.a(paramList);
  }
  
  public void b(Map<String, l> paramMap)
  {
    synchronized (this.a)
    {
      Map localMap = m();
      if (b.a(localMap, paramMap))
      {
        a(paramMap);
        a(a.i, localMap, paramMap);
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (this.a)
    {
      boolean bool1 = isDeleted();
      boolean bool2 = d();
      if (bool2 != paramBoolean)
      {
        c(paramBoolean);
        a(a.e, Boolean.valueOf(bool2), Boolean.valueOf(paramBoolean));
      }
      if ((bool1) || (!paramBoolean)) {
        break label152;
      }
      Iterator localIterator = this.r.iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (localj != null) {
          localj.c(new b(LayerChange.Type.DELETE, localj, null, null, null));
        }
      }
    }
    a(a.c, Boolean.valueOf(false), Boolean.valueOf(true));
    c(new b(LayerChange.Type.DELETE, this, null, null, null));
    label152:
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (this.a)
      {
        if (h() == null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void c(b paramb)
  {
    this.e.add(paramb);
  }
  
  public void c(Long paramLong)
  {
    synchronized (this.a)
    {
      if (this.g != null) {
        throw new IllegalStateException("setEventDatabaseId Event Database ID already set (" + this.g + "/" + paramLong + ")");
      }
    }
    this.g = Long.valueOf(paramLong.longValue());
  }
  
  public void c(Date paramDate)
  {
    synchronized (this.a)
    {
      Date localDate = getReceivedAt();
      if (b.a(localDate, paramDate))
      {
        b(paramDate);
        a(a.h, localDate, paramDate);
      }
      return;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    synchronized (this.a)
    {
      this.u = paramBoolean;
      return;
    }
  }
  
  public boolean c()
  {
    synchronized (this.a)
    {
      boolean bool = this.u;
      return bool;
    }
  }
  
  public void d(Long paramLong)
  {
    synchronized (this.a)
    {
      Long localLong = i();
      if (b.a(localLong, paramLong))
      {
        c(paramLong);
        a(a.a, localLong, paramLong);
      }
      return;
    }
  }
  
  public void d(Date paramDate)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (this.a)
      {
        Date localDate = getSentAt();
        if (b.a(localDate, paramDate))
        {
          a(paramDate);
          a(a.j, localDate, paramDate);
          a locala = a.f;
          if (localDate != null)
          {
            bool1 = true;
            if (paramDate == null) {
              break label86;
            }
            a(locala, Boolean.valueOf(bool1), Boolean.valueOf(bool2));
          }
        }
        else
        {
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label86:
      bool2 = false;
    }
  }
  
  public void d(boolean paramBoolean)
  {
    synchronized (this.a)
    {
      this.v = paramBoolean;
      return;
    }
  }
  
  public boolean d()
  {
    synchronized (this.a)
    {
      boolean bool = this.v;
      return bool;
    }
  }
  
  public void delete(final LayerClient.DeletionMode paramDeletionMode)
  {
    this.b.n().a(new f.b()
    {
      public final void a()
      {
        i.a(i.this, "Cannot get messages when no user is authenticated.");
        if (i.this.b()) {
          throw new LayerException(LayerException.Type.MESSAGE_IS_NEW, "Cannot delete a message if if was never sent.");
        }
        if (paramDeletionMode == LayerClient.DeletionMode.ALL_MY_DEVICES)
        {
          Conversation localConversation = i.this.getConversation();
          if ((localConversation != null) && (!localConversation.isReadReceiptsEnabled()))
          {
            if (k.a(6)) {
              k.e(i.wx(), "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled. Conversation: " + localConversation);
            }
            throw new LayerException(LayerException.Type.CONVERSATION_DOESNT_SUPPPORT_DELETE_ALL_MY_DEVICES, "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled");
          }
        }
      }
    });
  }
  
  public void e()
  {
    try
    {
      if (b())
      {
        boolean bool = this.m;
        if (!bool) {
          break label21;
        }
      }
    }
    finally
    {
      try
      {
        for (;;)
        {
          label21:
          v();
          this.n = null;
          this.m = true;
          if (!this.m) {
            w();
          }
        }
      }
      finally
      {
        if (this.m) {
          break label66;
        }
        w();
      }
      localObject1 = finally;
    }
  }
  
  public void e(boolean paramBoolean)
  {
    synchronized (this.a)
    {
      this.y = paramBoolean;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof i)) {}
    do
    {
      return false;
      paramObject = (i)paramObject;
    } while ((h() == null) || (((i)paramObject).h() == null));
    return h().equals(((i)paramObject).h());
  }
  
  public i f()
  {
    if (getMessageParts() == null) {
      throw new LayerException(LayerException.Type.NULL_MESSAGE_PARTS, "Null message parts");
    }
    if (getMessageParts().isEmpty()) {
      throw new LayerException(LayerException.Type.NO_MESSAGE_PARTS, "No message parts");
    }
    Iterator localIterator = getMessageParts().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (MessagePart)localIterator.next();
      if (localObject == null) {
        throw new LayerException(LayerException.Type.NULL_MESSAGE_PART, "Null message part");
      }
      localObject = (j)localObject;
      if ((((j)localObject).brf != null) || (((j)localObject).brg != null) || (((j)localObject).bre != null)) {}
      for (int i1 = 1; i1 == 0; i1 = 0) {
        throw new LayerException(LayerException.Type.NULL_MESSAGE_PART_DATA, "Null message part data");
      }
    }
    return this;
  }
  
  public Uri g()
  {
    synchronized (this.a)
    {
      Uri localUri = this.q.a();
      return localUri;
    }
  }
  
  public Conversation getConversation()
  {
    synchronized (this.a)
    {
      Conversation localConversation = (Conversation)this.q.b();
      return localConversation;
    }
  }
  
  public Uri getId()
  {
    synchronized (this.a)
    {
      Uri localUri = this.h;
      return localUri;
    }
  }
  
  public List<MessagePart> getMessageParts()
  {
    synchronized (this.a)
    {
      List localList = j();
      if (localList == null) {
        throw new IllegalStateException("Null message parts: " + this);
      }
    }
    ArrayList localArrayList = new ArrayList(localCollection);
    return localArrayList;
  }
  
  public MessageOptions getOptions()
  {
    return this.n;
  }
  
  public long getPosition()
  {
    synchronized (this.a)
    {
      long l1 = this.j;
      return l1;
    }
  }
  
  public Date getReceivedAt()
  {
    synchronized (this.a)
    {
      Date localDate = this.l;
      return localDate;
    }
  }
  
  public Message.RecipientStatus getRecipientStatus(Identity paramIdentity)
  {
    return a(paramIdentity.getUserId());
  }
  
  public Map<Identity, Message.RecipientStatus> getRecipientStatus()
  {
    Object localObject3;
    synchronized (this.a)
    {
      HashMap localHashMap = new HashMap();
      localObject2 = getSender();
      if ((localObject2 != null) && (!((e)localObject2).g)) {
        localHashMap.put(this.s.b(), getRecipientStatus((Identity)this.s.b()));
      }
      localObject2 = this.c.entrySet().iterator();
      if (((Iterator)localObject2).hasNext())
      {
        localObject3 = m.c((String)((Map.Entry)((Iterator)localObject2).next()).getKey());
        localObject3 = (Identity)this.b.m().a((Uri)localObject3, false);
        localHashMap.put(localObject3, getRecipientStatus((Identity)localObject3));
      }
    }
    Object localObject2 = (c)getConversation();
    if (localObject2 != null)
    {
      localObject2 = ((c)localObject2).getParticipants().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Identity)((Iterator)localObject2).next();
        if (!localMap.containsKey(localObject3)) {
          localMap.put(localObject3, getRecipientStatus((Identity)localObject3));
        }
      }
    }
    return localMap;
  }
  
  public Identity getSender()
  {
    synchronized (this.a)
    {
      Object localObject2;
      if (this.s.a() != null)
      {
        localObject2 = (Identity)this.s.b();
        return (Identity)localObject2;
      }
      if (this.x != null)
      {
        localObject2 = e.a(this.x);
        return (Identity)localObject2;
      }
    }
    if (k.a(2)) {
      k.a(d, "Identity user ID was not set, nor does it have a user name.");
    }
    return null;
  }
  
  public Date getSentAt()
  {
    synchronized (this.a)
    {
      Date localDate = this.k;
      return localDate;
    }
  }
  
  public Long h()
  {
    synchronized (this.a)
    {
      Long localLong = this.o;
      return localLong;
    }
  }
  
  public int hashCode()
  {
    if (h() == null) {
      return super.hashCode();
    }
    return h().hashCode();
  }
  
  public Long i()
  {
    synchronized (this.a)
    {
      if (this.g == null) {
        return null;
      }
      long l1 = this.g.longValue();
      return Long.valueOf(l1);
    }
  }
  
  public boolean isDeleted()
  {
    for (;;)
    {
      synchronized (this.a)
      {
        if (!this.u)
        {
          if (!this.v) {
            break label38;
          }
          break label33;
          return bool;
        }
      }
      label33:
      boolean bool = true;
      continue;
      label38:
      bool = false;
    }
  }
  
  public boolean isSent()
  {
    for (;;)
    {
      synchronized (this.a)
      {
        if (getSentAt() != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public List<j> j()
  {
    return this.r;
  }
  
  public List<Uri> k()
  {
    return this.r.a();
  }
  
  public Set<h> l()
  {
    synchronized (this.a)
    {
      Set localSet = this.t;
      return localSet;
    }
  }
  
  public Map<String, l> m()
  {
    synchronized (this.a)
    {
      Map localMap = this.c;
      return localMap;
    }
  }
  
  public void markAsRead()
  {
    this.b.n().a(new f.b()
    {
      public final void a()
      {
        i.a(i.this, "Cannot mark message read when no user is authenticated.");
        if (i.this.b())
        {
          if (k.a(6)) {
            k.e(i.wx(), "Cannot mark a new message read");
          }
          throw new LayerException(LayerException.Type.MESSAGE_IS_NEW, "Cannot mark a new message read");
        }
        if (i.this.isDeleted())
        {
          if (k.a(6)) {
            k.e(i.wx(), "Cannot mark a deleted message read");
          }
          throw new LayerException(LayerException.Type.MESSAGE_DELETED, "Cannot mark a deleted message read");
        }
        if (i.this.b.j().equals(i.this.getSender()))
        {
          if (k.a(6)) {
            k.e(i.wx(), "Cannot mark your own message read");
          }
          throw new LayerException(LayerException.Type.MARKING_OWN_MESSAGE_READ, "Cannot mark your own message read");
        }
        Conversation localConversation = i.this.getConversation();
        if ((localConversation != null) && (!localConversation.isReadReceiptsEnabled()))
        {
          if (k.a(6)) {
            k.e(i.wx(), "Cannot mark a message as read when the conversation has read receipts disabled");
          }
          throw new LayerException(LayerException.Type.CONVERSATION_HAS_DISABLED_READ_RECEIPTS, "Cannot mark a message as read when the conversation has read receipts disabled");
        }
      }
    });
  }
  
  public String n()
  {
    synchronized (this.a)
    {
      String str = this.x;
      return str;
    }
  }
  
  public String o()
  {
    synchronized (this.a)
    {
      String str = this.w;
      return str;
    }
  }
  
  public Integer p()
  {
    synchronized (this.a)
    {
      Integer localInteger = this.i;
      return localInteger;
    }
  }
  
  public Long q()
  {
    synchronized (this.a)
    {
      Long localLong = this.p;
      return localLong;
    }
  }
  
  public boolean r()
  {
    synchronized (this.a)
    {
      boolean bool = this.y;
      return bool;
    }
  }
  
  public void s()
  {
    this.e.clear();
  }
  
  public boolean t()
  {
    Iterator localIterator = j().iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      if (localj != null)
      {
        if (!localj.isContentReady()) {
          return false;
        }
        if (localj.getTransferStatus() == null) {
          return false;
        }
        if (localj.getTransferStatus() != MessagePart.TransferStatus.COMPLETE) {
          return false;
        }
      }
    }
    return true;
  }
  
  public static enum a
    implements com.layer.sdk.internal.lsdkd.e
  {
    final a bqY;
    final boolean bqZ;
    final String l;
    
    private a(String paramString, a parama, boolean paramBoolean)
    {
      this.l = paramString;
      this.bqY = parama;
      this.bqZ = paramBoolean;
    }
    
    public final String a()
    {
      return this.l;
    }
    
    public final a b()
    {
      return this.bqY;
    }
    
    public final boolean c()
    {
      return this.bqZ;
    }
    
    public final String toString()
    {
      return this.l;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */