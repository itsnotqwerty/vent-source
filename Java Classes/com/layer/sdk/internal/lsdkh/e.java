package com.layer.sdk.internal.lsdkh;

import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.messaging.MessagePart;
import com.layer.sdk.messaging.MessagePart.Property;
import com.layer.sdk.query.CompoundPredicate;
import com.layer.sdk.query.Predicate;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.SortDescriptor;
import java.util.List;

public class e
  extends g<MessagePart>
{
  public e(g.a parama)
  {
    super(parama, "message_parts");
  }
  
  private void b(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue(), true);; str = i.b(paramPredicate.getValue(), true))
    {
      parama.a(parama1, "LOWER(message_parts.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  private void c(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "(SELECT COUNT(*)-1 FROM message_parts AS counted_message_parts WHERE counted_message_parts.message_database_identifier == message_parts.message_database_identifier AND counted_message_parts.database_identifier <= message_parts.database_identifier) AS message_parts_index" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue());; str = i.b(paramPredicate.getValue()))
    {
      parama.a(parama1, "message_parts_index %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  private void d(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue());; str = i.b(paramPredicate.getValue()))
    {
      parama.a(parama1, "message_parts.transfer_status %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  private void e(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue());; str = i.b(paramPredicate.getValue()))
    {
      parama.a(parama1, "message_parts.message_database_identifier IN (SELECT database_identifier FROM messages WHERE object_identifier %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  private void f(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue());; str = i.b(paramPredicate.getValue()))
    {
      parama.a(parama1, "LOWER(message_parts.mime_type %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  private void g(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    for (String str = i.a(paramPredicate.getValue());; str = i.b(paramPredicate.getValue()))
    {
      parama.a(parama1, "message_parts.size %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), str });
      return;
    }
  }
  
  public List<MessagePart> a(Query<? extends MessagePart> paramQuery)
  {
    paramQuery = d(paramQuery);
    if (paramQuery == null) {
      return null;
    }
    return a().b().a(paramQuery);
  }
  
  protected void a(i.b.a parama)
  {
    parama.a(i.a.a, "message_parts.message_database_identifier IN (SELECT database_identifier FROM messages WHERE is_deleted_all_participants = 0 AND is_deleted_my_devices = 0)", new Object[0]);
  }
  
  protected void a(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    if ((paramPredicate instanceof CompoundPredicate))
    {
      a(parama, (CompoundPredicate)paramPredicate);
      return;
    }
    MessagePart.Property localProperty = (MessagePart.Property)paramPredicate.getProperty();
    b(paramPredicate, localProperty);
    switch (1.bqe[localProperty.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because an unqueryable property was specified in a predicate (`" + localProperty + "`).");
    case 1: 
      b(parama, paramPredicate, parama1);
      return;
    case 2: 
      c(parama, paramPredicate, parama1);
      return;
    case 3: 
      d(parama, paramPredicate, parama1);
      return;
    case 5: 
      e(parama, paramPredicate, parama1);
      return;
    case 6: 
      f(parama, paramPredicate, parama1);
      return;
    }
    g(parama, paramPredicate, parama1);
  }
  
  protected void a(i.b.a parama, SortDescriptor paramSortDescriptor)
  {
    Object localObject = (MessagePart.Property)paramSortDescriptor.getProperty();
    if (!((MessagePart.Property)localObject).isSortable()) {
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    }
    switch (1.bqe[localObject.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    case 1: 
      parama.a(new String[] { "message_parts.object_identifier" });
      localObject = "message_parts.object_identifier";
    }
    for (;;)
    {
      parama.a((String)localObject, paramSortDescriptor.getOrder());
      return;
      parama.a(new String[] { "(SELECT COUNT(*)-1 FROM message_parts AS counted_message_parts WHERE counted_message_parts.message_database_identifier == message_parts.message_database_identifier AND counted_message_parts.database_identifier <= message_parts.database_identifier) AS message_parts_index" });
      localObject = "message_parts_index";
      continue;
      parama.a(new String[] { "message_parts.transfer_status" });
      localObject = "message_parts.transfer_status";
      continue;
      parama.a(new String[] { "message_parts.size" });
      localObject = "message_parts.size";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */