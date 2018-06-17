package com.layer.sdk.internal.lsdkh;

import com.layer.b.f.c.o;
import com.layer.sdk.messaging.Announcement;
import com.layer.sdk.messaging.Message;
import com.layer.sdk.messaging.Message.Property;
import com.layer.sdk.messaging.MessagePart.TransferStatus;
import com.layer.sdk.query.CompoundPredicate;
import com.layer.sdk.query.Predicate;
import com.layer.sdk.query.Predicate.Operator;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.SortDescriptor;
import java.util.List;

public class f
  extends g<Message>
{
  public f(g.a parama)
  {
    super(parama, "messages");
  }
  
  private void c(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "LOWER(messages.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue(), true) });
      return;
    }
    parama.a(parama1, "LOWER(messages.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue(), true) });
  }
  
  private void d(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "messages.message_index %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.message_index %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void e(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    boolean bool = ((Boolean)paramPredicate.getValue()).booleanValue();
    int i;
    if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
    {
      i = 1;
      if (i == 0) {
        break label102;
      }
      label71:
      if (!bool) {
        break label119;
      }
    }
    label102:
    label119:
    for (paramPredicate = "IS NOT NULL";; paramPredicate = "IS NULL")
    {
      parama.a(parama1, "messages.seq %s", new Object[] { paramPredicate });
      return;
      i = 0;
      break;
      if (!bool)
      {
        bool = true;
        break label71;
      }
      bool = false;
      break label71;
    }
  }
  
  private void f(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "messages.sent_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.sent_at %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void g(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "messages.received_by_user %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.received_by_user %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void h(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "messages.user_id %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.user_id %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void i(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "messages.user_name %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.user_name %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void j(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    parama.a(parama1, "messages.is_unread %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
  }
  
  private void k(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "messages.database_identifier IN (SELECT message_database_identifier FROM message_parts WHERE mime_type %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE mime_type IN %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void l(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "messages.database_identifier IN (SELECT message_database_identifier FROM message_parts WHERE size %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE size IN %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void m(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    boolean bool = ((Boolean)paramPredicate.getValue()).booleanValue();
    int i;
    if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
    {
      i = 1;
      if (i == 0) {
        break label126;
      }
      label71:
      if (!bool) {
        break label143;
      }
    }
    label126:
    label143:
    for (paramPredicate = "IN";; paramPredicate = "NOT IN")
    {
      parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s)", new Object[] { paramPredicate, String.valueOf(MessagePart.TransferStatus.AWAITING_UPLOAD.getValue()), String.valueOf(MessagePart.TransferStatus.READY_FOR_DOWNLOAD.getValue()) });
      return;
      i = 0;
      break;
      if (!bool)
      {
        bool = true;
        break label71;
      }
      bool = false;
      break label71;
    }
  }
  
  private void n(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    boolean bool = ((Boolean)paramPredicate.getValue()).booleanValue();
    int i;
    if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
    {
      i = 1;
      if (i == 0) {
        break label126;
      }
      label71:
      if (!bool) {
        break label143;
      }
    }
    label126:
    label143:
    for (paramPredicate = "IN";; paramPredicate = "NOT IN")
    {
      parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s)", new Object[] { paramPredicate, String.valueOf(MessagePart.TransferStatus.UPLOADING.getValue()), String.valueOf(MessagePart.TransferStatus.DOWNLOADING.getValue()) });
      return;
      i = 0;
      break;
      if (!bool)
      {
        bool = true;
        break label71;
      }
      bool = false;
      break label71;
    }
  }
  
  private void o(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    boolean bool = ((Boolean)paramPredicate.getValue()).booleanValue();
    int i;
    if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
    {
      i = 1;
      if (i == 0) {
        break label114;
      }
      label71:
      if (!bool) {
        break label131;
      }
    }
    label114:
    label131:
    for (paramPredicate = "IN";; paramPredicate = "NOT IN")
    {
      parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s)", new Object[] { paramPredicate, String.valueOf(MessagePart.TransferStatus.COMPLETE.getValue()) });
      return;
      i = 0;
      break;
      if (!bool)
      {
        bool = true;
        break label71;
      }
      bool = false;
      break label71;
    }
  }
  
  private void p(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    boolean bool = ((Boolean)paramPredicate.getValue()).booleanValue();
    int i;
    if (paramPredicate.getOperator() == Predicate.Operator.EQUAL_TO)
    {
      i = 1;
      if (i == 0) {
        break label150;
      }
      label71:
      if (!bool) {
        break label167;
      }
    }
    label150:
    label167:
    for (paramPredicate = "NOT IN";; paramPredicate = "IN")
    {
      parama.a(parama1, "messages.database_identifier %s (SELECT message_database_identifier FROM message_parts WHERE transfer_status = %s OR transfer_status = %s OR transfer_status = %s OR transfer_status = %s)", new Object[] { paramPredicate, String.valueOf(MessagePart.TransferStatus.UPLOADING.getValue()), String.valueOf(MessagePart.TransferStatus.DOWNLOADING.getValue()), String.valueOf(MessagePart.TransferStatus.AWAITING_UPLOAD.getValue()), String.valueOf(MessagePart.TransferStatus.READY_FOR_DOWNLOAD.getValue()) });
      return;
      i = 0;
      break;
      if (!bool)
      {
        bool = true;
        break label71;
      }
      bool = false;
      break label71;
    }
  }
  
  public List<Message> a(Query<? extends Message> paramQuery)
  {
    paramQuery = d(paramQuery);
    if (paramQuery == null) {
      return null;
    }
    return a().b().a(paramQuery);
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
    Message.Property localProperty = (Message.Property)paramPredicate.getProperty();
    b(paramPredicate, localProperty);
    switch (1.bqe[localProperty.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because an unqueryable property was specified in a predicate (`" + localProperty + "`).");
    case 6: 
      c(parama, paramPredicate, parama1);
      return;
    case 1: 
      d(parama, paramPredicate, parama1);
      return;
    case 7: 
      b(parama, paramPredicate, parama1);
      return;
    case 2: 
      e(parama, paramPredicate, parama1);
      return;
    case 3: 
      f(parama, paramPredicate, parama1);
      return;
    case 4: 
      g(parama, paramPredicate, parama1);
      return;
    case 8: 
      h(parama, paramPredicate, parama1);
      return;
    case 9: 
      i(parama, paramPredicate, parama1);
      return;
    case 5: 
      j(parama, paramPredicate, parama1);
      return;
    case 10: 
      k(parama, paramPredicate, parama1);
      return;
    case 11: 
      l(parama, paramPredicate, parama1);
      return;
    case 12: 
      m(parama, paramPredicate, parama1);
      return;
    case 13: 
      n(parama, paramPredicate, parama1);
      return;
    case 14: 
      o(parama, paramPredicate, parama1);
      return;
    }
    p(parama, paramPredicate, parama1);
  }
  
  protected void a(i.b.a parama, SortDescriptor paramSortDescriptor)
  {
    Object localObject = (Message.Property)paramSortDescriptor.getProperty();
    if (!((Message.Property)localObject).isSortable()) {
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    }
    switch (1.bqe[localObject.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    case 1: 
      parama.a(new String[] { "messages.message_index" });
      localObject = "messages.message_index";
    }
    for (;;)
    {
      parama.a((String)localObject, paramSortDescriptor.getOrder());
      return;
      parama.a(new String[] { "messages.seq" });
      localObject = "CASE WHEN messages.seq IS NULL THEN 0 ELSE 1 END";
      continue;
      parama.a(new String[] { "messages.sent_at" });
      localObject = "messages.sent_at";
      continue;
      parama.a(new String[] { "messages.received_by_user" });
      localObject = "messages.received_by_user";
      continue;
      parama.a(new String[] { "messages.is_unread" });
      localObject = "messages.is_unread";
    }
  }
  
  protected Predicate b(Query<? extends Message> paramQuery)
  {
    if (paramQuery.getQueryClass() == Announcement.class) {
      return new g.b("messages.type = " + o.bFu.a);
    }
    return new g.b("(messages.type = " + o.bFt.a + " OR messages.type = " + o.bFv.a + ")");
  }
  
  protected void b(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "messages.conversation_database_identifier IN (SELECT database_identifier FROM conversations WHERE object_identifier %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "messages.conversation_database_identifier IN (SELECT database_identifier FROM conversations WHERE object_identifier %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */