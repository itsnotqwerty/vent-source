package com.layer.sdk.internal.lsdkh;

import android.net.Uri;
import com.layer.sdk.internal.lsdkd.f;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.query.CompoundPredicate;
import com.layer.sdk.query.CompoundPredicate.Type;
import com.layer.sdk.query.Predicate;
import com.layer.sdk.query.Predicate.Operator;
import com.layer.sdk.query.Query;
import com.layer.sdk.query.Query.ResultType;
import com.layer.sdk.query.Queryable;
import com.layer.sdk.query.Queryable.Property;
import com.layer.sdk.query.SortDescriptor;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public abstract class g<T extends Queryable>
{
  private static final k.a a = k.a(g.class);
  private final a b;
  private final String c;
  
  public g(a parama, String paramString)
  {
    this.b = parama;
    this.c = paramString;
  }
  
  protected static IllegalArgumentException a(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    return new IllegalArgumentException(paramPredicate.getOperator().getType() + " predicates are not supported for `" + paramProperty + "`");
  }
  
  protected static void a(i.b.a parama, i.b paramb)
  {
    parama.a(paramb.b());
  }
  
  protected static void b(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    if (!paramProperty.isEqualityQueryable()) {
      e(paramPredicate, paramProperty);
    }
    if (!paramProperty.isInclusionQueryable()) {
      d(paramPredicate, paramProperty);
    }
    if (!paramProperty.isRelativeQueryable()) {
      c(paramPredicate, paramProperty);
    }
    if (!paramProperty.isPatternQueryable()) {
      f(paramPredicate, paramProperty);
    }
  }
  
  protected static void c(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    if (paramPredicate.isRelative()) {
      throw new IllegalArgumentException("Relative predicates are not supported for `" + paramProperty + "`");
    }
  }
  
  protected static void d(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    if (paramPredicate.isInclusion()) {
      throw new IllegalArgumentException("Inclusion predicates are not supported for `" + paramProperty + "`");
    }
  }
  
  protected static void e(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    if (paramPredicate.isEquality()) {
      throw new IllegalArgumentException("Equality predicates are not supported for `" + paramProperty + "`");
    }
  }
  
  protected static void f(Predicate paramPredicate, Queryable.Property paramProperty)
  {
    if (paramPredicate.isPattern()) {
      throw new IllegalArgumentException("Pattern predicates are not supported for `" + paramProperty + "`");
    }
  }
  
  protected a a()
  {
    return this.b;
  }
  
  protected i.b a(Query<? extends T> paramQuery, String... paramVarArgs)
  {
    i.b.a locala = new i.b.a().a(paramVarArgs);
    locala.b(new String[] { this.c });
    paramVarArgs = b(paramQuery);
    Object localObject = paramQuery.getPredicate();
    if (paramVarArgs != null) {
      if (localObject != null)
      {
        paramVarArgs = new CompoundPredicate(CompoundPredicate.Type.AND, new Predicate[] { paramVarArgs, localObject });
        if (paramVarArgs != null)
        {
          if (!(paramVarArgs instanceof CompoundPredicate)) {
            break label196;
          }
          localObject = new i.b.a();
          a((i.b.a)localObject, (CompoundPredicate)paramVarArgs);
          paramVarArgs = ((i.b.a)localObject).a();
          a(locala, paramVarArgs);
          locala.a("(%s)", new Object[] { paramVarArgs.a() });
        }
      }
    }
    for (;;)
    {
      a(locala);
      paramVarArgs = paramQuery.getSortDescriptors();
      if ((paramVarArgs == null) || (paramVarArgs.isEmpty())) {
        break label209;
      }
      paramVarArgs = paramVarArgs.iterator();
      while (paramVarArgs.hasNext()) {
        a(locala, (SortDescriptor)paramVarArgs.next());
      }
      break;
      paramVarArgs = (String[])localObject;
      break;
      label196:
      a(locala, paramVarArgs, i.a.a);
    }
    label209:
    paramVarArgs = paramQuery.getLimit();
    if (paramVarArgs.longValue() != Long.MAX_VALUE)
    {
      locala.b(paramVarArgs);
      locala.a(paramQuery.getOffset());
    }
    for (;;)
    {
      paramVarArgs = locala.a();
      if (k.a(2))
      {
        if (paramVarArgs == null) {
          break;
        }
        paramQuery = paramVarArgs.a();
        k.a(a, "SQL statement for query: " + paramQuery);
      }
      return paramVarArgs;
      locala.b(Long.valueOf(Long.MAX_VALUE));
      locala.a(Long.valueOf(0L));
    }
    k.a(a, "queryToStatement for query resulted in null statement: " + paramQuery);
    return paramVarArgs;
  }
  
  public abstract List<T> a(Query<? extends T> paramQuery);
  
  public List a(Query<T> paramQuery, Query.ResultType paramResultType)
  {
    switch (1.bqe[paramResultType.ordinal()])
    {
    }
    do
    {
      return null;
      return a(paramQuery);
      return d(paramQuery);
      paramQuery = c(paramQuery);
    } while (paramQuery == null);
    return Arrays.asList(new Long[] { paramQuery });
  }
  
  protected void a(i.b.a parama)
  {
    parama.a(i.a.a, this.c + ".is_deleted_all_participants = 0 AND " + this.c + ".is_deleted_my_devices = 0", new Object[0]);
  }
  
  protected void a(i.b.a parama, CompoundPredicate paramCompoundPredicate)
  {
    Iterator localIterator = paramCompoundPredicate.getSubPredicates().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Predicate)localIterator.next();
      i.b.a locala;
      if ((localObject instanceof CompoundPredicate))
      {
        locala = new i.b.a();
        a(locala, (CompoundPredicate)localObject);
        localObject = locala.a();
        a(parama, (i.b)localObject);
        localObject = ((i.b)localObject).a();
        switch (1.b[paramCompoundPredicate.getType().ordinal()])
        {
        default: 
          break;
        case 1: 
          parama.a("(%s)", new Object[] { localObject });
          break;
        case 2: 
          parama.b("(%s)", new Object[] { localObject });
          break;
        case 3: 
          parama.c("NOT (%s)", new Object[] { localObject });
          break;
        }
      }
      else
      {
        switch (1.b[paramCompoundPredicate.getType().ordinal()])
        {
        default: 
          throw new IllegalArgumentException("Unknown type: " + paramCompoundPredicate.getType());
        case 1: 
          a(parama, (Predicate)localObject, i.a.a);
          break;
        case 2: 
          a(parama, (Predicate)localObject, i.a.b);
          break;
        case 3: 
          locala = new i.b.a();
          a(locala, (Predicate)localObject, i.a.c);
          localObject = locala.a();
          a(parama, (i.b)localObject);
          parama.c("NOT (%s)", new Object[] { ((i.b)localObject).a() });
        }
      }
    }
  }
  
  protected abstract void a(i.b.a parama, Predicate paramPredicate, i.a parama1);
  
  protected abstract void a(i.b.a parama, SortDescriptor paramSortDescriptor);
  
  protected Predicate b(Query<? extends T> paramQuery)
  {
    return null;
  }
  
  public Long c(Query<? extends T> paramQuery)
  {
    paramQuery = a(paramQuery, new String[] { "COUNT(*)" });
    if (paramQuery == null) {
      return null;
    }
    paramQuery = paramQuery.a();
    return a().a().a(paramQuery);
  }
  
  public List<Uri> d(Query<? extends T> paramQuery)
  {
    paramQuery = a(paramQuery, new String[] { this.c + ".object_identifier" });
    if (paramQuery == null) {
      return null;
    }
    paramQuery = paramQuery.a();
    return a().a().b(paramQuery);
  }
  
  public static abstract interface a
  {
    public abstract com.layer.sdk.internal.lsdke.g a();
    
    public abstract f b();
    
    public abstract String c();
  }
  
  protected static class b
    extends Predicate
  {
    private final String a;
    
    public b(String paramString)
    {
      super(null, null);
      this.a = paramString;
    }
    
    public String a()
    {
      return this.a;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkh/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */