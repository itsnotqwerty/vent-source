package com.layer.sdk.internal.lsdkh;

import com.layer.b.f.c.o;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Conversation;
import com.layer.sdk.messaging.Conversation.Property;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Metadata;
import com.layer.sdk.query.CompoundPredicate;
import com.layer.sdk.query.CompoundPredicate.Type;
import com.layer.sdk.query.Predicate;
import com.layer.sdk.query.Predicate.Operator;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.SortDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class b
  extends g<Conversation>
{
  private static final k.a a = k.a(b.class);
  
  public b(g.a parama)
  {
    super(parama, "conversations");
  }
  
  private List<Predicate> a(Metadata paramMetadata, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMetadata.keySet().iterator();
    String str;
    Object localObject;
    if (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localObject = paramMetadata.get(str);
      if (paramString == null) {
        break label140;
      }
      str = String.format(Locale.US, "%s.%s", new Object[] { paramString, str });
    }
    label140:
    for (;;)
    {
      if ((localObject instanceof String))
      {
        localArrayList.add(new Predicate(Conversation.Property.METADATA, str, Predicate.Operator.EQUAL_TO, localObject));
        break;
      }
      if (!(localObject instanceof Metadata)) {
        break;
      }
      localArrayList.addAll(a((Metadata)localObject, str));
      break;
      return localArrayList;
    }
  }
  
  private void b(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "conversations.object_identifier" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "LOWER(conversations.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue(), true) });
      return;
    }
    parama.a(parama1, "LOWER(conversations.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue(), true) });
  }
  
  private void c(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    HashSet localHashSet = new HashSet();
    if (paramPredicate.getValue() == null) {
      throw new IllegalArgumentException("Participants cannot be NULL");
    }
    Object localObject1 = i.d(paramPredicate.getValue()).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = ((Iterator)localObject1).next();
      if ((localObject2 instanceof Identity)) {
        localHashSet.add(((Identity)localObject2).getUserId());
      } else if ((localObject2 instanceof String)) {
        localHashSet.add((String)localObject2);
      } else {
        throw new IllegalArgumentException("Participants may only contain Identity or String objects.");
      }
    }
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      localObject1 = a().c();
      if (localObject1 != null) {
        localHashSet.add(localObject1);
      }
      parama.a(new String[] { "(SELECT GROUP_CONCAT(HEX(member_id), \",\") FROM (SELECT member_id FROM conversation_participants WHERE conversation_participants.is_deleted = 0 AND conversation_participants.conversation_database_identifier = conversations.database_identifier ORDER BY member_id)) AS participants" });
      parama.a(parama1, "participants %s %s", new Object[] { i.a(paramPredicate.getOperator(), localHashSet), i.c(localHashSet) });
      return;
    }
    parama.a(new String[] { "conversations.database_identifier" });
    parama.a(parama1, "conversations.database_identifier %s (SELECT conversation_database_identifier FROM conversation_participants WHERE is_deleted = 0 AND member_id IN %s)", new Object[] { i.a(paramPredicate.getOperator(), localHashSet), i.b(localHashSet) });
  }
  
  private void d(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    if (paramPredicate.getValue() == null) {
      throw new IllegalArgumentException("Participant count cannot be NULL");
    }
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(new String[] { "(SELECT COUNT(*) FROM (SELECT member_id FROM conversation_participants WHERE conversation_participants.is_deleted = 0 AND conversation_participants.conversation_database_identifier = conversations.database_identifier ORDER BY member_id)) AS participant_count" });
      parama.a(parama1, "participant_count %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(new String[] { "(SELECT COUNT(*) FROM (SELECT member_id FROM conversation_participants WHERE conversation_participants.is_deleted = 0 AND conversation_participants.conversation_database_identifier = conversations.database_identifier ORDER BY member_id)) AS participant_count" });
    parama.a(parama1, "participant_count %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void e(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "conversations.created_at" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 2: 
      parama.a(parama1, "conversations.created_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "conversations.created_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
  }
  
  private void f(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "conversations.database_identifier" });
    parama.a(new String[] { "(SELECT MAX(message_index) FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier AND is_deleted_all_participants = 0 AND is_deleted_my_devices = 0) AS last_message_index" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "conversations.database_identifier = (SELECT conversation_database_identifier FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier AND message_index = last_message_index AND LOWER(messages.object_identifier) %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue(), true) });
      return;
    }
    parama.a(parama1, "conversations.database_identifier = (SELECT conversation_database_identifier FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier AND message_index = last_message_index AND LOWER(messages.object_identifier) %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue(), true) });
  }
  
  private void g(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "conversations.has_unread_messages" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    parama.a(parama1, "conversations.has_unread_messages %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
  }
  
  private void h(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "(SELECT MAX(received_by_user) FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier) AS last_message_received_by_user" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "last_message_received_by_user %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "last_message_received_by_user %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void i(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "(SELECT MAX(sent_at) FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier) AS last_message_sent_at" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "last_message_sent_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "last_message_sent_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void j(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "conversations.is_distinct" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    parama.a(parama1, "conversations.is_distinct %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
  }
  
  private void k(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    Object localObject = paramPredicate.getPropertyKey();
    if (localObject == null)
    {
      if ((paramPredicate.getValue() != null) && (!(paramPredicate.getValue() instanceof Metadata))) {
        throw new IllegalArgumentException("Predicate value must be a non-null Metadata type when querying using a Metadata object. Predicate value: " + paramPredicate.getValue());
      }
      localObject = (Metadata)paramPredicate.getValue();
      if ((localObject == null) || (((Metadata)localObject).isEmpty()))
      {
        parama.a(parama1, "conversations.database_identifier NOT IN (SELECT object_id from local_keyed_values WHERE object_type = 'conversation' AND is_deleted = 0 AND key_type = 1)", new Object[0]);
        return;
      }
      if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
      {
        paramPredicate = a((Metadata)localObject, null);
        a(parama, new CompoundPredicate(CompoundPredicate.Type.AND, paramPredicate));
        return;
      }
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "conversations.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = 'conversation' AND is_deleted = 0 AND key_type = 1)", new Object[] { i.a(localObject), i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "conversations.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = 'conversation' AND is_deleted = 0 AND key_type = 1)", new Object[] { i.a(localObject), i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  public List<Conversation> a(Query<? extends Conversation> paramQuery)
  {
    List localList = d(paramQuery);
    if (localList == null)
    {
      if (k.a(2)) {
        k.a(a, "Query resulted in no conversations: " + paramQuery);
      }
      paramQuery = null;
    }
    do
    {
      return paramQuery;
      localList = a().b().a(localList);
      paramQuery = localList;
    } while (!k.a(2));
    k.a(a, "Count of Conversation returned by executeForObjects: " + localList.size());
    return localList;
  }
  
  protected void a(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    if ((paramPredicate instanceof CompoundPredicate))
    {
      a(parama, (CompoundPredicate)paramPredicate);
      return;
    }
    if ((paramPredicate instanceof g.b))
    {
      parama.a(parama1, ((g.b)paramPredicate).a(), new Object[0]);
      return;
    }
    switch (1.bqe[((Conversation.Property)paramPredicate.getProperty()).ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because an unqueryable property was specified in a predicate (`" + paramPredicate.getProperty() + "`).");
    case 1: 
      b(parama, paramPredicate, parama1);
      return;
    case 2: 
      c(parama, paramPredicate, parama1);
      return;
    case 3: 
      d(parama, paramPredicate, parama1);
      return;
    case 4: 
      e(parama, paramPredicate, parama1);
      return;
    case 8: 
      f(parama, paramPredicate, parama1);
      return;
    case 5: 
      g(parama, paramPredicate, parama1);
      return;
    case 6: 
      h(parama, paramPredicate, parama1);
      return;
    case 7: 
      i(parama, paramPredicate, parama1);
      return;
    case 9: 
      j(parama, paramPredicate, parama1);
      return;
    }
    k(parama, paramPredicate, parama1);
  }
  
  protected void a(i.b.a parama, SortDescriptor paramSortDescriptor)
  {
    Object localObject = (Conversation.Property)paramSortDescriptor.getProperty();
    if (!((Conversation.Property)localObject).isSortable()) {
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    }
    switch (1.bqe[localObject.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    case 1: 
      parama.a(new String[] { "conversations.object_identifier" });
      localObject = "conversations.object_identifier";
    }
    for (;;)
    {
      parama.a((String)localObject, paramSortDescriptor.getOrder());
      return;
      parama.a(new String[] { "(SELECT GROUP_CONCAT(HEX(member_id), \",\") FROM conversation_participants WHERE conversation_participants.conversation_database_identifier = conversations.database_identifier ORDER BY member_id) AS participants" });
      localObject = "participants";
      continue;
      parama.a(new String[] { "(SELECT COUNT(*) FROM conversation_participants WHERE conversation_participants.conversation_database_identifier = conversations.database_identifier ORDER BY member_id) AS participant_count" });
      localObject = "participant_count";
      continue;
      parama.a(new String[] { "conversations.created_at" });
      localObject = "conversations.created_at";
      continue;
      parama.a(new String[] { "conversations.has_unread_messages" });
      localObject = "conversations.has_unread_messages";
      continue;
      parama.a(new String[] { "(SELECT MAX(received_by_user) FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier) AS last_message_received_by_user" });
      localObject = "last_message_received_by_user";
      continue;
      parama.a(new String[] { "(SELECT MAX(sent_at) FROM messages WHERE messages.conversation_database_identifier = conversations.database_identifier) AS last_message_sent_at" });
      localObject = "last_message_sent_at";
    }
  }
  
  protected Predicate b(Query<? extends Conversation> paramQuery)
  {
    return new g.b("(conversations.type = " + o.bFt.a + " OR conversations.type = " + o.bFv.a + ")");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */