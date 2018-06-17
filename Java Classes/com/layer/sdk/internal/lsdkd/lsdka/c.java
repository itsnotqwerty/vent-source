package com.layer.sdk.internal.lsdkd.lsdka;

import android.net.Uri;
import android.text.TextUtils;
import com.layer.sdk.LayerClient.DeletionMode;
import com.layer.sdk.changes.LayerChange.Type;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkd.a;
import com.layer.sdk.internal.lsdkd.a.a;
import com.layer.sdk.internal.lsdkd.a.b;
import com.layer.sdk.internal.lsdkd.a.d;
import com.layer.sdk.internal.lsdkd.h;
import com.layer.sdk.internal.lsdkd.j;
import com.layer.sdk.internal.lsdkk.f.a;
import com.layer.sdk.internal.lsdkk.f.b;
import com.layer.sdk.internal.lsdkk.m.a;
import com.layer.sdk.internal.lsdkk.m.c;
import com.layer.sdk.internal.lsdkk.m.h;
import com.layer.sdk.internal.lsdkk.m.i;
import com.layer.sdk.listeners.LayerProgressListener;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Conversation.HistoricSyncStatus;
import com.layer.sdk.messaging.ConversationOptions;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Metadata;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class c
  extends Conversation
  implements com.layer.sdk.internal.lsdkd.d
{
  private static final com.layer.sdk.internal.lsdkk.k.a a = com.layer.sdk.internal.lsdkk.k.a(c.class);
  private final Object b = new Object();
  private final ConcurrentLinkedQueue<com.layer.sdk.internal.lsdkd.b> c = new ConcurrentLinkedQueue();
  private h d;
  private Map<String, String> e = p();
  private final m f = new m();
  private final AtomicBoolean g = new AtomicBoolean(false);
  private Uri h = null;
  private final f<i> i = new f();
  private Map<String, d> j = new LinkedHashMap();
  private Long k;
  private UUID l;
  private Integer m;
  private Integer n;
  private Conversation.HistoricSyncStatus o;
  private Date p;
  private Long q;
  private boolean r = true;
  private boolean s = false;
  private boolean t = false;
  private boolean u = true;
  
  public c(Uri paramUri, Long paramLong)
  {
    this(paramUri, paramLong, true);
  }
  
  public c(Uri paramUri, Long paramLong, boolean paramBoolean)
  {
    this.h = paramUri;
    this.q = paramLong;
    this.o = Conversation.HistoricSyncStatus.INVALID;
    this.u = paramBoolean;
    if (this.q == null) {
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, this, null, null, null));
    }
  }
  
  public c(ConversationOptions paramConversationOptions, Set<String> paramSet)
  {
    this(com.layer.sdk.internal.lsdkd.m.a(), null);
    ConversationOptions localConversationOptions = paramConversationOptions;
    if (paramConversationOptions == null) {
      localConversationOptions = new ConversationOptions();
    }
    a(b.a, localConversationOptions.isDeliveryReceipts());
    this.r = localConversationOptions.isDistinct();
    paramConversationOptions = new ArrayList(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      paramConversationOptions.add(new d((String)paramSet.next()));
    }
    a(paramConversationOptions);
    a(k());
  }
  
  private c a(Set<String> paramSet)
  {
    if (paramSet == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Null Participants");
      }
      throw new LayerException(LayerException.Type.NULL_PARTICIPANTS, "Null participants");
    }
    if (paramSet.isEmpty())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "No Participants");
      }
      throw new LayerException(LayerException.Type.NO_PARTICIPANTS, "No participants");
    }
    int i1 = r();
    if (paramSet.size() > i1 + 1)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Participant count of " + paramSet.size() + " is more than " + i1);
      }
      throw new LayerException(LayerException.Type.TOO_MANY_PARTICIPANTS, "Participant count of " + paramSet.size() + " is more than " + i1);
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if (str == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Null Participant");
        }
        throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Null participant");
      }
      if ((str.isEmpty()) && (com.layer.sdk.internal.lsdkk.k.a(5))) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Empty Participant");
      }
    }
    return this;
  }
  
  private void a(a parama, Object paramObject1, Object paramObject2)
  {
    c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.UPDATE, this, parama, paramObject1, paramObject2));
  }
  
  private void a(b paramb, boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (this.b)
      {
        Map localMap = this.e;
        String str = paramb.a();
        if (paramBoolean)
        {
          paramb = "1";
          localMap.put(str, paramb);
          return;
        }
      }
      paramb = "0";
    }
  }
  
  private void a(String paramString)
  {
    if (this.d.i() == null) {
      throw new LayerException(LayerException.Type.NOT_AUTHENTICATED, paramString);
    }
  }
  
  private boolean a(b paramb)
  {
    for (;;)
    {
      synchronized (this.b)
      {
        if ((this.e == null) || (!this.e.containsKey(paramb.a())))
        {
          if (paramb.b().equals("0")) {
            break label90;
          }
          bool = true;
          return bool;
        }
        if (!((String)this.e.get(paramb.a())).equals("0"))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
      continue;
      label90:
      bool = false;
    }
  }
  
  private long b(String paramString)
  {
    Object localObject = (i)getLastMessage();
    int i3;
    int i1;
    if ((localObject == null) || ((((i)localObject).p() != null) && (((i)localObject).p().intValue() < 0)))
    {
      if (j() == null)
      {
        i3 = 0;
        i1 = 0;
        return k.a().a(i1).a(paramString).c(i3).d();
      }
      localObject = this.d.l().a(this);
      if (localObject == null) {}
      for (i1 = 0;; i1 = ((Integer)localObject).intValue())
      {
        i3 = 0;
        break;
      }
    }
    int i4;
    if (((i)localObject).p() != null) {
      i4 = ((i)localObject).p().intValue();
    }
    for (int i2 = 0;; i2 = k.b(((i)localObject).getPosition()) + 1)
    {
      i1 = i4;
      i3 = i2;
      if (j() == null) {
        break;
      }
      localObject = this.d.l().a(this);
      i1 = i4;
      i3 = i2;
      if (localObject == null) {
        break;
      }
      i1 = i4;
      i3 = i2;
      if (((Integer)localObject).intValue() <= i4) {
        break;
      }
      i1 = ((Integer)localObject).intValue();
      i3 = i2;
      break;
      i4 = k.a(((i)localObject).getPosition());
    }
  }
  
  private static Map<String, String> p()
  {
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    b[] arrayOfb = b.values();
    int i2 = arrayOfb.length;
    int i1 = 0;
    while (i1 < i2)
    {
      b localb = arrayOfb[i1];
      localConcurrentHashMap.put(localb.a(), localb.b());
      i1 += 1;
    }
    return localConcurrentHashMap;
  }
  
  private boolean q()
  {
    if (!isReadReceiptsEnabled())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot mark all messages as read when the conversation has read receipts disabled");
      }
      throw new LayerException(LayerException.Type.CONVERSATION_HAS_DISABLED_READ_RECEIPTS, "Cannot mark all messages as read when the conversation has read receipts disabled");
    }
    if (b()) {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `markAllMessagesAsRead`. Cannot request `markAllMessagesAsRead` on a new Conversation: " + this);
      }
    }
    do
    {
      do
      {
        return true;
        if (!isDeleted()) {
          break;
        }
      } while (!com.layer.sdk.internal.lsdkk.k.a(5));
      com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `markAllMessagesAsRead`. Cannot request `markAllMessagesAsRead` on a deleted Conversation: " + this);
      return true;
      if (i() != null) {
        break;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(5));
    com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `markAllMessagesAsRead`. Cannot `markAllMessagesAsRead` if there are no messages on the Conversation: " + this);
    return true;
    return false;
  }
  
  private int r()
  {
    if (isReadReceiptsEnabled()) {
      return 25;
    }
    return 250;
  }
  
  public m.i a(m.c paramc)
  {
    synchronized (this.b)
    {
      m localm1 = (m)getMetadata();
      paramc = this.f.b(paramc);
      m localm2 = (m)getMetadata();
      if (com.layer.sdk.internal.lsdkk.m.b(localm1, localm2).e()) {
        a(a.g, localm1, localm2);
      }
      return paramc;
    }
  }
  
  public m.i a(m.c paramc, m.i parami)
  {
    synchronized (this.b)
    {
      m localm = (m)getMetadata();
      paramc = this.f.a(paramc, parami);
      parami = (m)getMetadata();
      if (com.layer.sdk.internal.lsdkk.m.b(localm, parami).e()) {
        a(a.g, localm, parami);
      }
      return paramc;
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
      this.h = paramUri;
      return;
    }
  }
  
  public void a(com.layer.sdk.internal.lsdkd.b paramb)
  {
    ??? = (a)paramb.b();
    switch (7.bqK[paramb.getChangeType().ordinal()])
    {
    }
    do
    {
      localObject2 = paramb.getNewValue();
      switch (7.b[???.ordinal()])
      {
      default: 
        throw new LayerException(LayerException.Type.CANNOT_UPDATE_ATTRIBUTE, "Cannot update " + ???);
        if (??? == null) {
          if (!isDeleted()) {
            break;
          }
        }
      case 2: 
        synchronized (this.b)
        {
          paramb = (c)paramb.a();
          c(paramb.c());
          d(paramb.d());
          e(paramb.isDistinct());
          b(paramb.i());
          this.f.clear();
          this.f.a(paramb.f);
          this.j.clear();
          this.j.putAll(paramb.j);
          a(paramb.getTotalMessageCount());
          b(paramb.getTotalUnreadMessageCount());
          a(paramb.getHistoricSyncStatus());
          this.g.set(false);
          c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, this, null, null, null));
          return;
        }
        throw new LayerException(LayerException.Type.NOT_UPDATE, "Cannot " + paramb.getChangeType() + " attributes: " + ???);
      }
    } while (??? != null);
    throw new LayerException(LayerException.Type.UPDATE_WITHOUT_ATTRIBUTE, "Cannot UPDATE without an attribute");
    c((Uri)localObject2);
    return;
    a(((Boolean)localObject2).booleanValue());
    return;
    b(((Boolean)localObject2).booleanValue());
    return;
    f(((Boolean)localObject2).booleanValue());
    return;
    d((Uri)localObject2);
    return;
    a((m)localObject2, false);
    return;
    paramb = l();
    ??? = new HashMap();
    Object localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      d locald = (d)((Iterator)localObject2).next();
      ((Map)???).put(locald.a(), locald);
    }
    this.j = ((Map)???);
    c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.UPDATE, this, a.h, paramb, l()));
    return;
    c((Long)localObject2);
    return;
    b((UUID)localObject2);
    return;
    c((Integer)localObject2);
    return;
    d((Integer)localObject2);
    return;
    b((Conversation.HistoricSyncStatus)localObject2);
  }
  
  public void a(com.layer.sdk.internal.lsdkd.d paramd)
  {
    a((c)paramd);
  }
  
  public void a(h paramh)
  {
    synchronized (this.b)
    {
      this.d = paramh;
      this.i.a(paramh);
      return;
    }
  }
  
  public void a(c paramc)
  {
    a[] arrayOfa = a.values();
    int i2 = arrayOfa.length;
    int i1 = 0;
    while (i1 < i2)
    {
      a locala = arrayOfa[i1];
      switch (7.b[locala.ordinal()])
      {
      default: 
        throw new IllegalStateException(" Handle updates to the Attribute: " + locala);
      }
      i1 += 1;
    }
    c(paramc.getId());
    a(paramc.c());
    b(paramc.d());
    f(paramc.isDistinct());
    d(paramc.i());
    c(paramc.l());
    c(paramc.m());
    b(paramc.j());
    c(paramc.getTotalMessageCount());
    d(paramc.getTotalUnreadMessageCount());
    b(paramc.getHistoricSyncStatus());
    a((m)paramc.getMetadata(), false);
  }
  
  public void a(m paramm, boolean paramBoolean)
  {
    synchronized (this.b)
    {
      m localm = (m)getMetadata();
      if (paramBoolean)
      {
        com.layer.sdk.internal.lsdkk.m.a(this.f, paramm);
        paramm = (m)getMetadata();
        if (com.layer.sdk.internal.lsdkk.m.b(localm, paramm).e()) {
          a(a.g, localm, paramm);
        }
        return;
      }
      this.f.clear();
      this.f.a(paramm);
    }
  }
  
  public void a(Conversation.HistoricSyncStatus paramHistoricSyncStatus)
  {
    synchronized (this.b)
    {
      this.o = paramHistoricSyncStatus;
      return;
    }
  }
  
  public void a(Integer paramInteger)
  {
    synchronized (this.b)
    {
      this.m = paramInteger;
      return;
    }
  }
  
  public void a(Long paramLong)
  {
    synchronized (this.b)
    {
      this.q = paramLong;
      return;
    }
  }
  
  public void a(Date paramDate)
  {
    synchronized (this.b)
    {
      this.p = paramDate;
      return;
    }
  }
  
  public void a(List<d> paramList)
  {
    synchronized (this.b)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        d locald = (d)paramList.next();
        if (!this.j.containsKey(locald.a())) {
          this.j.put(locald.a(), locald);
        }
      }
    }
  }
  
  public void a(Map<String, String> paramMap)
  {
    Map localMap;
    synchronized (this.b)
    {
      localMap = p();
      if (paramMap != null)
      {
        paramMap = paramMap.entrySet().iterator();
        if (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          localMap.put(localEntry.getKey(), localEntry.getValue());
        }
      }
    }
    this.e = localMap;
  }
  
  public void a(UUID paramUUID)
  {
    synchronized (this.b)
    {
      this.l = paramUUID;
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (this.b)
      {
        boolean bool1 = c();
        boolean bool2 = d();
        if (bool1 == paramBoolean) {
          return;
        }
        c(paramBoolean);
        a(a.c, Boolean.valueOf(bool2), Boolean.valueOf(paramBoolean));
        if (!bool2)
        {
          if (paramBoolean)
          {
            a(a.b, Boolean.valueOf(false), Boolean.valueOf(true));
            c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.DELETE, this, null, null, null));
          }
        }
        else {
          return;
        }
      }
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Attempt to undelete conversation: " + this);
      }
    }
  }
  
  public void addParticipantsByIds(Set<String> paramSet)
  {
    a("Cannot add participants when no user is authenticated.");
    if (paramSet == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot add null participant set");
      }
      throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Cannot add null participant set");
    }
    if (paramSet.isEmpty())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot add empty participant set");
      }
      throw new LayerException(LayerException.Type.NO_PARTICIPANTS, "Cannot add empty participant set");
    }
    final Object localObject1 = paramSet.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      if (localObject2 == null)
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot add null participant");
        }
        throw new LayerException(LayerException.Type.NULL_PARTICIPANT, "Cannot add null participant");
      }
      if (((String)localObject2).isEmpty())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(6)) {
          com.layer.sdk.internal.lsdkk.k.e(a, "Cannot add empty participant");
        }
        throw new LayerException(LayerException.Type.EMPTY_PARTICIPANT, "Cannot add empty participant");
      }
    }
    localObject1 = new HashSet(k());
    ((Set)localObject1).addAll(paramSet);
    int i1 = r();
    if (((Set)localObject1).size() > i1)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot add participants as there are too many participants. Participant count of " + ((Set)localObject1).size() + " is more than " + i1);
      }
      throw new LayerException(LayerException.Type.TOO_MANY_PARTICIPANTS, "Participant count of " + ((Set)localObject1).size() + " is more than " + i1);
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Adding participants : " + paramSet + " to conversation: " + this);
    }
    localObject1 = new ArrayList(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      localObject2 = new d((String)paramSet.next());
      ((d)localObject2).b(g());
      ((List)localObject1).add(localObject2);
    }
    new HashSet(l()).addAll((Collection)localObject1);
    if (b())
    {
      this.r = false;
      ((j)this.d.m()).c(getId());
      a((List)localObject1);
      return;
    }
    this.d.n().a(new f.a() {});
  }
  
  public void b(Uri paramUri)
  {
    synchronized (this.b)
    {
      this.i.a(paramUri);
      return;
    }
  }
  
  public void b(com.layer.sdk.internal.lsdkd.b paramb)
  {
    if (paramb.getChangeType() == LayerChange.Type.DELETE)
    {
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.UPDATE, this, a.b, Boolean.valueOf(false), Boolean.valueOf(true)));
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.DELETE, this, null, null, null));
      return;
    }
    c(new com.layer.sdk.internal.lsdkd.b(paramb.getChangeType(), this, paramb.b(), paramb.getOldValue(), paramb.getNewValue()));
  }
  
  public void b(Conversation.HistoricSyncStatus paramHistoricSyncStatus)
  {
    synchronized (this.b)
    {
      Conversation.HistoricSyncStatus localHistoricSyncStatus = getHistoricSyncStatus();
      if (com.layer.sdk.internal.lsdkd.b.a(localHistoricSyncStatus, paramHistoricSyncStatus))
      {
        a(paramHistoricSyncStatus);
        a(a.m, localHistoricSyncStatus, paramHistoricSyncStatus);
      }
      return;
    }
  }
  
  public void b(Integer paramInteger)
  {
    synchronized (this.b)
    {
      this.n = paramInteger;
      return;
    }
  }
  
  public void b(Long paramLong)
  {
    synchronized (this.b)
    {
      this.k = paramLong;
      return;
    }
  }
  
  public void b(List<d> paramList)
  {
    synchronized (this.b)
    {
      paramList = paramList.iterator();
      if (paramList.hasNext())
      {
        d locald = (d)paramList.next();
        this.j.remove(locald.a());
      }
    }
  }
  
  public void b(UUID paramUUID)
  {
    synchronized (this.b)
    {
      UUID localUUID = j();
      if (com.layer.sdk.internal.lsdkd.b.a(localUUID, paramUUID))
      {
        a(paramUUID);
        a(a.j, localUUID, paramUUID);
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    for (;;)
    {
      synchronized (this.b)
      {
        boolean bool1 = c();
        boolean bool2 = d();
        if (bool2 == paramBoolean) {
          return;
        }
        d(paramBoolean);
        a(a.d, Boolean.valueOf(bool2), Boolean.valueOf(paramBoolean));
        if (!bool1)
        {
          if (paramBoolean)
          {
            a(a.b, Boolean.valueOf(false), Boolean.valueOf(true));
            c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.DELETE, this, null, null, null));
          }
        }
        else {
          return;
        }
      }
      this.g.set(false);
      a(a.b, Boolean.valueOf(true), Boolean.valueOf(false));
      c(new com.layer.sdk.internal.lsdkd.b(LayerChange.Type.INSERT, this, null, null, null));
    }
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        if (g() == null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void c(Uri paramUri)
  {
    synchronized (this.b)
    {
      Uri localUri = getId();
      if (!localUri.equals(paramUri))
      {
        a(paramUri);
        a(a.a, localUri, paramUri);
      }
      return;
    }
  }
  
  public void c(com.layer.sdk.internal.lsdkd.b paramb)
  {
    this.c.add(paramb);
  }
  
  public void c(Integer paramInteger)
  {
    synchronized (this.b)
    {
      Integer localInteger = getTotalMessageCount();
      if (com.layer.sdk.internal.lsdkd.b.a(localInteger, paramInteger))
      {
        a(paramInteger);
        a(a.k, localInteger, paramInteger);
      }
      return;
    }
  }
  
  public void c(Long paramLong)
  {
    synchronized (this.b)
    {
      Long localLong = m();
      if (com.layer.sdk.internal.lsdkd.b.a(localLong, paramLong))
      {
        b(paramLong);
        a(a.i, localLong, paramLong);
      }
      return;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      this.s = paramBoolean;
      return;
    }
  }
  
  public boolean c()
  {
    synchronized (this.b)
    {
      boolean bool = this.s;
      return bool;
    }
  }
  
  public boolean c(List<d> paramList)
  {
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    boolean bool;
    for (;;)
    {
      d locald1;
      synchronized (this.b)
      {
        localArrayList1 = new ArrayList(this.j.values());
        localArrayList2 = new ArrayList(localArrayList1);
        paramList = paramList.iterator();
        bool = false;
        if (!paramList.hasNext()) {
          break;
        }
        locald1 = (d)paramList.next();
        d locald2 = (d)this.j.get(locald1.a());
        if (locald2 != null)
        {
          if (locald1.g() != null) {
            locald2.a(locald1.g());
          }
          if (locald1.e() != null) {
            locald2.d(locald1.e());
          }
          locald2.a(locald1.f());
        }
      }
      localArrayList2.add(locald1);
      this.j.put(locald1.a(), locald1);
      bool = true;
    }
    if (bool) {
      a(a.h, localArrayList1, localArrayList2);
    }
    return bool;
  }
  
  public void d(Uri paramUri)
  {
    synchronized (this.b)
    {
      Uri localUri = i();
      if (com.layer.sdk.internal.lsdkd.b.a(localUri, paramUri))
      {
        b(paramUri);
        a(a.f, localUri, paramUri);
      }
      return;
    }
  }
  
  public void d(Integer paramInteger)
  {
    synchronized (this.b)
    {
      Integer localInteger = getTotalUnreadMessageCount();
      if (com.layer.sdk.internal.lsdkd.b.a(localInteger, paramInteger))
      {
        b(paramInteger);
        a(a.l, localInteger, paramInteger);
      }
      return;
    }
  }
  
  public void d(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      this.t = paramBoolean;
      return;
    }
  }
  
  public boolean d()
  {
    synchronized (this.b)
    {
      boolean bool = this.t;
      return bool;
    }
  }
  
  public boolean d(List<d> paramList)
  {
    for (;;)
    {
      synchronized (this.b)
      {
        ArrayList localArrayList1 = new ArrayList(this.j.values());
        ArrayList localArrayList2 = new ArrayList(localArrayList1);
        boolean bool = false;
        paramList = paramList.iterator();
        if (paramList.hasNext())
        {
          d locald1 = (d)paramList.next();
          d locald2 = (d)this.j.get(locald1.a());
          if (locald2 != null)
          {
            if ((locald1.g() != null) && (!locald1.g().equals(locald2.g()))) {
              locald2.a(locald1.g());
            }
            if ((locald1.e() != null) && (!locald1.e().equals(locald2.e()))) {
              locald2.d(locald1.e());
            }
            locald2.a(locald1.f());
            localArrayList2.remove(locald2);
            this.j.remove(locald2.a());
            bool = true;
          }
        }
        else
        {
          if (bool) {
            a(a.h, localArrayList1, localArrayList2);
          }
          return bool;
        }
      }
    }
  }
  
  public void delete(final LayerClient.DeletionMode paramDeletionMode)
  {
    this.d.n().a(new f.b()
    {
      public final void a()
      {
        c.a(c.this, "Cannot delete conversations when no user is authenticated.");
        if (c.this.b()) {
          throw new LayerException(LayerException.Type.CONVERSATION_IS_NEW, "Cannot delete a new conversation.");
        }
        if ((paramDeletionMode == LayerClient.DeletionMode.ALL_MY_DEVICES) && (!c.this.isReadReceiptsEnabled()))
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.e(c.wv(), "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled. Conversation: " + c.this);
          }
          throw new LayerException(LayerException.Type.CONVERSATION_DOESNT_SUPPPORT_DELETE_ALL_MY_DEVICES, "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled");
        }
      }
    });
  }
  
  public h e()
  {
    return this.d;
  }
  
  public void e(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      this.r = paramBoolean;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {}
    do
    {
      return false;
      paramObject = (c)paramObject;
    } while ((g() == null) || (((c)paramObject).g() == null));
    return g().equals(((c)paramObject).g());
  }
  
  public Map<String, String> f()
  {
    synchronized (this.b)
    {
      Map localMap = this.e;
      return localMap;
    }
  }
  
  public void f(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      Boolean localBoolean = Boolean.valueOf(isDistinct());
      if (!localBoolean.equals(Boolean.valueOf(paramBoolean)))
      {
        e(paramBoolean);
        a(a.e, localBoolean, Boolean.valueOf(paramBoolean));
      }
      return;
    }
  }
  
  public Long g()
  {
    synchronized (this.b)
    {
      Long localLong = this.q;
      return localLong;
    }
  }
  
  public Conversation.HistoricSyncStatus getHistoricSyncStatus()
  {
    synchronized (this.b)
    {
      Conversation.HistoricSyncStatus localHistoricSyncStatus = this.o;
      return localHistoricSyncStatus;
    }
  }
  
  public Uri getId()
  {
    synchronized (this.b)
    {
      Uri localUri = this.h;
      return localUri;
    }
  }
  
  public Message getLastMessage()
  {
    synchronized (this.b)
    {
      Message localMessage = (Message)this.i.b();
      return localMessage;
    }
  }
  
  public Metadata getMetadata()
  {
    synchronized (this.b)
    {
      m localm = com.layer.sdk.internal.lsdkk.m.a(this.f);
      return localm;
    }
  }
  
  public Set<Identity> getParticipants()
  {
    HashSet localHashSet;
    for (;;)
    {
      Object localObject4;
      synchronized (this.b)
      {
        localHashSet = new HashSet(this.j.size());
        Iterator localIterator = this.j.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        String str = ((d)localIterator.next()).a();
        localObject4 = null;
        if (!TextUtils.isEmpty(str))
        {
          Object localObject1 = com.layer.sdk.internal.lsdkd.m.c(str);
          localObject1 = (Identity)this.d.m().a((Uri)localObject1, false);
          localObject4 = localObject1;
          if (localObject1 == null) {
            localObject4 = e.a(str, this.d);
          }
          localHashSet.add(localObject4);
        }
      }
      Object localObject3 = localObject4;
      if (com.layer.sdk.internal.lsdkk.k.a(2))
      {
        com.layer.sdk.internal.lsdkk.k.a(a, "Conversation participant's user id is empty, creating placeholder identity");
        localObject3 = localObject4;
      }
    }
    return localHashSet;
  }
  
  public Integer getTotalMessageCount()
  {
    synchronized (this.b)
    {
      Integer localInteger = this.m;
      return localInteger;
    }
  }
  
  public Integer getTotalUnreadMessageCount()
  {
    synchronized (this.b)
    {
      Integer localInteger = this.n;
      return localInteger;
    }
  }
  
  public Date h()
  {
    synchronized (this.b)
    {
      Date localDate = this.p;
      return localDate;
    }
  }
  
  public int hashCode()
  {
    if (g() == null) {
      return super.hashCode();
    }
    return g().hashCode();
  }
  
  public Uri i()
  {
    synchronized (this.b)
    {
      Uri localUri = this.i.a();
      return localUri;
    }
  }
  
  public boolean isDeleted()
  {
    for (;;)
    {
      synchronized (this.b)
      {
        if (!this.s)
        {
          if (!this.t) {
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
  
  public boolean isDeliveryReceiptsEnabled()
  {
    return a(b.a);
  }
  
  public boolean isDistinct()
  {
    synchronized (this.b)
    {
      boolean bool = this.r;
      return bool;
    }
  }
  
  public boolean isReadReceiptsEnabled()
  {
    return this.u;
  }
  
  public UUID j()
  {
    synchronized (this.b)
    {
      UUID localUUID = this.l;
      return localUUID;
    }
  }
  
  public Set<String> k()
  {
    synchronized (this.b)
    {
      Set localSet = this.j.keySet();
      return localSet;
    }
  }
  
  public List<d> l()
  {
    synchronized (this.b)
    {
      ArrayList localArrayList = new ArrayList(this.j.values());
      return localArrayList;
    }
  }
  
  public Long m()
  {
    synchronized (this.b)
    {
      Long localLong = this.k;
      return localLong;
    }
  }
  
  public void markAllMessagesAsRead()
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "markAllMessagesAsRead : " + this);
    }
    if (q()) {}
    final d locald;
    do
    {
      return;
      locald = (d)this.j.get(this.d.i());
      if (locald != null) {
        break;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(5));
    com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `markAllMessagesAsRead`. Cannot `markAllMessagesAsRead` if the current user is not a participant on the Conversation: " + this);
    return;
    this.d.n().a(new f.a() {});
  }
  
  public void n()
  {
    this.c.clear();
  }
  
  public void putMetadata(final Metadata paramMetadata, final boolean paramBoolean)
  {
    if (paramMetadata == null) {
      throw new IllegalArgumentException("metadata cannot be null");
    }
    paramMetadata = com.layer.sdk.internal.lsdkk.m.a((m)paramMetadata);
    this.d.n().a(new f.b()
    {
      public final void a()
      {
        c.a(c.this, "Cannot put metadata when no user is authenticated.");
        if (c.this.isDeleted()) {
          throw new LayerException(LayerException.Type.CONVERSATION_DELETED, "Cannot put metadata on a deleted conversation.");
        }
      }
    });
  }
  
  public void putMetadataAtKeyPath(final String paramString1, final String paramString2)
  {
    paramString1 = new m.c(paramString1);
    paramString2 = new m.h(paramString2, null);
    this.d.n().a(new f.b()
    {
      public final void a()
      {
        c.a(c.this, "Cannot put metadata when no user is authenticated.");
        if (c.this.isDeleted()) {
          throw new LayerException(LayerException.Type.CONVERSATION_DELETED, "Cannot put metadata on a deleted conversation.");
        }
      }
    });
  }
  
  public void removeMetadataAtKeyPath(final String paramString)
  {
    paramString = new m.c(paramString);
    this.d.n().a(new f.b()
    {
      public final void a()
      {
        c.a(c.this, "Cannot remove metadata when no user is authenticated.");
        if (c.this.isDeleted()) {
          throw new LayerException(LayerException.Type.CONVERSATION_DELETED, "Cannot remove metadata on a deleted conversation.");
        }
      }
    });
  }
  
  public void removeParticipants(Set<Identity> paramSet)
  {
    a("Cannot remove participants when no user is authenticated.");
    if (paramSet == null)
    {
      if (com.layer.sdk.internal.lsdkk.k.a(6)) {
        com.layer.sdk.internal.lsdkk.k.e(a, "Cannot remove null participant set");
      }
      throw new IllegalArgumentException("Cannot remove null participant set");
    }
    Object localObject1 = new HashSet(k());
    final Object localObject2 = paramSet.iterator();
    while (((Iterator)localObject2).hasNext()) {
      ((Set)localObject1).remove(((Identity)((Iterator)localObject2).next()).getUserId());
    }
    if (((Set)localObject1).size() <= 0) {
      throw new LayerException(LayerException.Type.NO_PARTICIPANTS, "Cannot reduce participants to zero; delete the conversation instead.");
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Removing Conversation participants from list with size " + paramSet.size());
    }
    if (paramSet.isEmpty()) {
      return;
    }
    localObject2 = l();
    localObject1 = new HashMap();
    localObject2 = ((List)localObject2).iterator();
    d locald;
    while (((Iterator)localObject2).hasNext())
    {
      locald = (d)((Iterator)localObject2).next();
      ((Map)localObject1).put(locald.a(), locald);
    }
    localObject2 = new ArrayList(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      locald = (d)((Map)localObject1).get(((Identity)paramSet.next()).getUserId());
      if (locald != null)
      {
        locald.a(true);
        ((List)localObject2).add(locald);
      }
    }
    if (b())
    {
      this.r = false;
      ((j)this.d.m()).c(getId());
      b((List)localObject2);
      return;
    }
    this.d.n().a(new f.a() {});
  }
  
  public void send(LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    a("Cannot send typing indicator when no user is authenticated.");
    if (b()) {}
    while (isDeleted()) {
      return;
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Sending TypingIndicator with value " + paramTypingIndicator + " to Conversation");
    }
    this.d.n().a(j(), paramTypingIndicator);
  }
  
  public void send(Message paramMessage)
  {
    send(paramMessage, null);
  }
  
  public void send(final Message paramMessage, final LayerProgressListener paramLayerProgressListener)
  {
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(a, "Sending Message (Id: " + paramMessage.getId() + ") to Conversation (Id: " + getId() + ")");
    }
    this.d.n().a(new f.b()
    {
      public final void a()
      {
        c.a(c.this, "Cannot send messages when no user is authenticated.");
        if (!((i)paramMessage).b()) {
          throw new LayerException(LayerException.Type.MESSAGE_ALREADY_SENT, "Cannot send an already-sent Message.");
        }
        if (c.this.isDeleted()) {
          throw new LayerException(LayerException.Type.CONVERSATION_DELETED, "Cannot send a message to a deleted Conversation.");
        }
      }
    });
  }
  
  public void syncAllHistoricMessages()
  {
    com.layer.sdk.internal.lsdkk.k.a(a, "syncAllHistoricMessages : " + this);
    if (b())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `syncAllHistoricMessages`. Cannot request `syncAllHistoricMessages` on a new Conversation: " + this);
      }
      return;
    }
    this.d.n().a(new f.a() {});
  }
  
  public void syncFromEarliestUnreadMessage()
  {
    com.layer.sdk.internal.lsdkk.k.a(a, "syncFromEarliestUnreadMessage  : " + this);
    if (b()) {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `syncFromEarliestUnreadMessage`. Cannot request `syncFromEarliestUnreadMessage` on a new Conversation: " + this);
      }
    }
    do
    {
      return;
      if (isReadReceiptsEnabled()) {
        break;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(5));
    com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `syncFromEarliestUnreadMessage`. Cannot request `syncFromEarliestUnreadMessage` on a Conversation with read receipts disabled. Conversation: " + this);
    return;
    this.d.n().a(new f.a() {});
  }
  
  public void syncMoreHistoricMessages(final int paramInt)
  {
    com.layer.sdk.internal.lsdkk.k.a(a, "syncMoreHistoricMessages " + paramInt + " : " + this);
    if (b())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(5)) {
        com.layer.sdk.internal.lsdkk.k.d(a, "Ignoring call to `syncMoreHistoricMessages`. Cannot request `syncMoreHistoricMessages` on a new Conversation: " + this);
      }
      return;
    }
    this.d.n().a(new f.a() {});
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ConversationImpl [  id: ").append(this.h).append(", mStreamDatabaseId: ").append(this.k).append(", mStreamId: ").append(this.l).append(", mCreatedAt: ").append(this.p).append(", mDatabaseId: ").append(this.q).append(", mDistinct: ").append(this.r).append(", mTotalMessageCount: ").append(this.m).append(", mTotalUnreadMessageCount: ").append(this.n).append(", mHistoricSyncStatus: ").append(this.o).append(", mReadReceiptsEnabled: ").append(this.u).append(", mParticipants: ").append(com.layer.sdk.internal.lsdkk.k.a(this.j)).append(", mMetadata: ").append(this.f).append("]");
    return localStringBuilder.toString();
  }
  
  public static enum a
    implements com.layer.sdk.internal.lsdkd.e
  {
    final a bqV;
    final boolean bqW;
    final String n;
    
    private a(String paramString, a parama, boolean paramBoolean)
    {
      this.n = paramString;
      this.bqV = parama;
      this.bqW = paramBoolean;
    }
    
    public final String a()
    {
      return this.n;
    }
    
    public final a b()
    {
      return this.bqV;
    }
    
    public final boolean c()
    {
      return this.bqW;
    }
    
    public final String toString()
    {
      return this.n;
    }
  }
  
  public static enum b
  {
    final String b;
    final String c;
    
    private b(String paramString1, String paramString2)
    {
      this.b = paramString1;
      this.c = paramString2;
    }
    
    public final String a()
    {
      return this.b;
    }
    
    public final String b()
    {
      return this.c;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/lsdka/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */