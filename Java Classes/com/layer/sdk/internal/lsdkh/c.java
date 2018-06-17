package com.layer.sdk.internal.lsdkh;

import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.messaging.Identity;
import com.layer.sdk.messaging.Identity.Property;
import com.layer.sdk.messaging.Metadata;
import com.layer.sdk.query.CompoundPredicate;
import com.layer.sdk.query.CompoundPredicate.Type;
import com.layer.sdk.query.Predicate;
import com.layer.sdk.query.Predicate.Operator;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.SortDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class c
  extends g<Identity>
{
  private static final k.a a = k.a(c.class);
  
  public c(g.a parama)
  {
    super(parama, "identities");
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
        localArrayList.add(new Predicate(Identity.Property.METADATA, str, Predicate.Operator.EQUAL_TO, localObject));
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
  
  private void a(i.b.a parama, Predicate paramPredicate, i.a parama1, String paramString)
  {
    parama.a(new String[] { "identities." + paramString });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 3: 
      parama.a(parama1, "identities." + paramString + " %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "identities." + paramString + " %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void b(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "identities.object_identifier" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "LOWER(identities.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue(), true) });
      return;
    }
    parama.a(parama1, "LOWER(identities.object_identifier) %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue(), true) });
  }
  
  private void c(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    parama.a(new String[] { "identities.followed" });
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    }
    parama.a(parama1, "identities.followed %s %s", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
  }
  
  private void d(i.b.a parama, Predicate paramPredicate, i.a parama1)
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
        parama.a(parama1, "identities.database_identifier NOT IN (SELECT object_id from local_keyed_values WHERE object_type = 'identity' AND is_deleted = 0 AND key_type = 1)", new Object[0]);
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
      parama.a(parama1, "identities.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = 'identity' AND is_deleted = 0 AND key_type = 1)", new Object[] { i.a(localObject), i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "identities.database_identifier IN (SELECT object_id from local_keyed_values WHERE key = %s AND value %s %s AND object_type = 'identity' AND is_deleted = 0 AND key_type = 1)", new Object[] { i.a(localObject), i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void e(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
      parama.a(parama1, "identities.user_id IN (SELECT user_id from presence WHERE status %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "identities.user_id IN (SELECT user_id from presence WHERE status %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  private void f(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    switch (1.b[paramPredicate.getOperator().getType().ordinal()])
    {
    case 3: 
    default: 
      throw a(paramPredicate, paramPredicate.getProperty());
    case 1: 
    case 4: 
      parama.a(parama1, "identities.user_id IN (SELECT user_id from presence WHERE last_seen_at %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.a(paramPredicate.getValue()) });
      return;
    }
    parama.a(parama1, "identities.user_id IN (SELECT user_id from presence WHERE last_seen_at %s %s)", new Object[] { i.a(paramPredicate.getOperator(), paramPredicate.getValue()), i.b(paramPredicate.getValue()) });
  }
  
  public List<Identity> a(Query<? extends Identity> paramQuery)
  {
    List localList = d(paramQuery);
    if (localList == null)
    {
      if (k.a(2)) {
        k.a(a, "Query resulted in no identities: " + paramQuery);
      }
      paramQuery = null;
    }
    do
    {
      return paramQuery;
      localList = a().b().a(localList);
      paramQuery = localList;
    } while (!k.a(2));
    k.a(a, "Count of Identities returned by executeForObjects: " + localList.size());
    return localList;
  }
  
  protected void a(i.b.a parama) {}
  
  protected void a(i.b.a parama, Predicate paramPredicate, i.a parama1)
  {
    b(paramPredicate, paramPredicate.getProperty());
    switch (1.bqe[((Identity.Property)paramPredicate.getProperty()).ordinal()])
    {
    default: 
      if (k.a(6)) {
        k.e(a, "The query could not be completed because an unqueryable property was specified in a predicate (`" + paramPredicate.getProperty() + "`).");
      }
      throw new IllegalArgumentException("The query could not be completed because an unqueryable property was specified in a predicate (`" + paramPredicate.getProperty() + "`).");
    case 6: 
      b(parama, paramPredicate, parama1);
      return;
    case 7: 
      a(parama, paramPredicate, parama1, "user_id");
      return;
    case 3: 
      a(parama, paramPredicate, parama1, "display_name");
      return;
    case 1: 
      a(parama, paramPredicate, parama1, "first_name");
      return;
    case 2: 
      a(parama, paramPredicate, parama1, "last_name");
      return;
    case 8: 
      a(parama, paramPredicate, parama1, "phone_number");
      return;
    case 4: 
      a(parama, paramPredicate, parama1, "email_address");
      return;
    case 9: 
      a(parama, paramPredicate, parama1, "avatar_image_url");
      return;
    case 10: 
      a(parama, paramPredicate, parama1, "public_key");
      return;
    case 11: 
      c(parama, paramPredicate, parama1);
      return;
    case 12: 
      d(parama, paramPredicate, parama1);
      return;
    case 13: 
      e(parama, paramPredicate, parama1);
      return;
    }
    f(parama, paramPredicate, parama1);
  }
  
  protected void a(i.b.a parama, SortDescriptor paramSortDescriptor)
  {
    Object localObject = (Identity.Property)paramSortDescriptor.getProperty();
    if (!((Identity.Property)localObject).isSortable()) {
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    }
    switch (1.bqe[localObject.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("The query could not be completed because a sort descriptor given specifies a non-sortable property (`" + localObject + "`).");
    case 1: 
      parama.a(new String[] { "identities.first_name" });
      localObject = "identities.first_name";
    }
    for (;;)
    {
      parama.a((String)localObject, paramSortDescriptor.getOrder());
      return;
      parama.a(new String[] { "identities.last_name" });
      localObject = "identities.last_name";
      continue;
      parama.a(new String[] { "identities.display_name" });
      localObject = "identities.display_name";
      continue;
      parama.a(new String[] { "identities.email_address" });
      localObject = "identities.email_address";
      continue;
      parama.a(new String[] { "(SELECT MAX(last_seen_at) FROM PRESENCE WHERE presence.user_id = identities.user_id) AS last_seen_at" });
      localObject = "last_seen_at";
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */