package io.intercom.a.c.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

public class b
{
  public static final String DEFAULT_IDENTIFIER = "default";
  private final i enforcer;
  private final ThreadLocal<ConcurrentLinkedQueue<a>> eventsToDispatch = new ThreadLocal() {};
  private final ConcurrentMap<Class<?>, Set<Class<?>>> flattenHierarchyCache = new ConcurrentHashMap();
  private final f handlerFinder;
  private final ConcurrentMap<Class<?>, Set<d>> handlersByType = new ConcurrentHashMap();
  private final String identifier;
  private final ThreadLocal<Boolean> isDispatching = new ThreadLocal() {};
  private final ConcurrentMap<Class<?>, e> producersByType = new ConcurrentHashMap();
  
  public b()
  {
    this("default");
  }
  
  public b(i parami)
  {
    this(parami, "default");
  }
  
  public b(i parami, String paramString)
  {
    this(parami, paramString, f.cTN);
  }
  
  b(i parami, String paramString, f paramf)
  {
    this.enforcer = parami;
    this.identifier = paramString;
    this.handlerFinder = paramf;
  }
  
  public b(String paramString)
  {
    this(i.cTP, paramString);
  }
  
  private void dispatchProducerResultToHandler(d paramd, e parame)
  {
    Object localObject1 = null;
    try
    {
      Object localObject2 = parame.Ko();
      parame = (e)localObject2;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        throwRuntimeException("Producer " + parame + " threw an exception.", localInvocationTargetException);
        parame = (e)localObject1;
      }
      dispatch(parame, paramd);
    }
    if (parame == null) {
      return;
    }
  }
  
  private Set<Class<?>> getClassesFor(Class<?> paramClass)
  {
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    localLinkedList.add(paramClass);
    while (!localLinkedList.isEmpty())
    {
      paramClass = (Class)localLinkedList.remove(0);
      localHashSet.add(paramClass);
      paramClass = paramClass.getSuperclass();
      if (paramClass != null) {
        localLinkedList.add(paramClass);
      }
    }
    return localHashSet;
  }
  
  private static void throwRuntimeException(String paramString, InvocationTargetException paramInvocationTargetException)
  {
    Throwable localThrowable = paramInvocationTargetException.getCause();
    if (localThrowable != null) {
      throw new RuntimeException(paramString + ": " + localThrowable.getMessage(), localThrowable);
    }
    throw new RuntimeException(paramString + ": " + paramInvocationTargetException.getMessage(), paramInvocationTargetException);
  }
  
  protected void dispatch(Object paramObject, d paramd)
  {
    try
    {
      if (!paramd.aan) {
        throw new IllegalStateException(paramd.toString() + " has been invalidated and can no longer handle events.");
      }
    }
    catch (InvocationTargetException localInvocationTargetException1)
    {
      throwRuntimeException("Could not dispatch event: " + paramObject.getClass() + " to handler " + paramd, localInvocationTargetException1);
      return;
    }
    try
    {
      paramd.method.invoke(paramd.cTM, new Object[] { paramObject });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException2)
    {
      if ((localInvocationTargetException2.getCause() instanceof Error)) {
        throw ((Error)localInvocationTargetException2.getCause());
      }
      throw localInvocationTargetException2;
    }
  }
  
  protected void dispatchQueuedEvents()
  {
    if (((Boolean)this.isDispatching.get()).booleanValue()) {
      return;
    }
    this.isDispatching.set(Boolean.valueOf(true));
    try
    {
      for (;;)
      {
        a locala = (a)((ConcurrentLinkedQueue)this.eventsToDispatch.get()).poll();
        if (locala == null) {
          break;
        }
        if (locala.cTL.aan) {
          dispatch(locala.cTK, locala.cTL);
        }
      }
    }
    finally
    {
      this.isDispatching.set(Boolean.valueOf(false));
    }
  }
  
  protected void enqueueEvent(Object paramObject, d paramd)
  {
    ((ConcurrentLinkedQueue)this.eventsToDispatch.get()).offer(new a(paramObject, paramd));
  }
  
  Set<Class<?>> flattenHierarchy(Class<?> paramClass)
  {
    Set localSet = (Set)this.flattenHierarchyCache.get(paramClass);
    Object localObject = localSet;
    if (localSet == null)
    {
      localSet = getClassesFor(paramClass);
      paramClass = (Set)this.flattenHierarchyCache.putIfAbsent(paramClass, localSet);
      localObject = paramClass;
      if (paramClass == null) {
        localObject = localSet;
      }
    }
    return (Set<Class<?>>)localObject;
  }
  
  Set<d> getHandlersForEventType(Class<?> paramClass)
  {
    return (Set)this.handlersByType.get(paramClass);
  }
  
  e getProducerForEventType(Class<?> paramClass)
  {
    return (e)this.producersByType.get(paramClass);
  }
  
  public void post(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Event to post must not be null.");
    }
    this.enforcer.a(this);
    Iterator localIterator = flattenHierarchy(paramObject.getClass()).iterator();
    int i;
    for (int j = 0; localIterator.hasNext(); j = i)
    {
      Object localObject = getHandlersForEventType((Class)localIterator.next());
      i = j;
      if (localObject != null)
      {
        i = j;
        if (!((Set)localObject).isEmpty())
        {
          j = 1;
          localObject = ((Set)localObject).iterator();
          for (;;)
          {
            i = j;
            if (!((Iterator)localObject).hasNext()) {
              break;
            }
            enqueueEvent(paramObject, (d)((Iterator)localObject).next());
          }
        }
      }
    }
    if ((j == 0) && (!(paramObject instanceof c))) {
      post(new c(this, paramObject));
    }
    dispatchQueuedEvents();
  }
  
  public void register(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Object to register must not be null.");
    }
    this.enforcer.a(this);
    Object localObject1 = this.handlerFinder.aF(paramObject);
    Object localObject2 = ((Map)localObject1).keySet().iterator();
    Object localObject5;
    while (((Iterator)localObject2).hasNext())
    {
      localObject4 = (Class)((Iterator)localObject2).next();
      localObject3 = (e)((Map)localObject1).get(localObject4);
      localObject5 = (e)this.producersByType.putIfAbsent(localObject4, localObject3);
      if (localObject5 != null) {
        throw new IllegalArgumentException("Producer method for type " + localObject4 + " found on type " + ((e)localObject3).cTM.getClass() + ", but already registered by type " + ((e)localObject5).cTM.getClass() + ".");
      }
      localObject4 = (Set)this.handlersByType.get(localObject4);
      if ((localObject4 != null) && (!((Set)localObject4).isEmpty()))
      {
        localObject4 = ((Set)localObject4).iterator();
        while (((Iterator)localObject4).hasNext()) {
          dispatchProducerResultToHandler((d)((Iterator)localObject4).next(), (e)localObject3);
        }
      }
    }
    Object localObject3 = this.handlerFinder.aG(paramObject);
    Object localObject4 = ((Map)localObject3).keySet().iterator();
    while (((Iterator)localObject4).hasNext())
    {
      localObject5 = (Class)((Iterator)localObject4).next();
      localObject1 = (Set)this.handlersByType.get(localObject5);
      paramObject = localObject1;
      if (localObject1 == null)
      {
        localObject1 = new CopyOnWriteArraySet();
        localObject2 = (Set)this.handlersByType.putIfAbsent(localObject5, localObject1);
        paramObject = localObject2;
        if (localObject2 == null) {
          paramObject = localObject1;
        }
      }
      if (!((Set)paramObject).addAll((Set)((Map)localObject3).get(localObject5))) {
        throw new IllegalArgumentException("Object already registered.");
      }
    }
    paramObject = ((Map)localObject3).entrySet().iterator();
    label497:
    while (((Iterator)paramObject).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)paramObject).next();
      localObject1 = (Class)((Map.Entry)localObject2).getKey();
      localObject1 = (e)this.producersByType.get(localObject1);
      if ((localObject1 != null) && (((e)localObject1).aan))
      {
        localObject2 = ((Set)((Map.Entry)localObject2).getValue()).iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label497;
          }
          localObject3 = (d)((Iterator)localObject2).next();
          if (!((e)localObject1).aan) {
            break;
          }
          if (((d)localObject3).aan) {
            dispatchProducerResultToHandler((d)localObject3, (e)localObject1);
          }
        }
      }
    }
  }
  
  public String toString()
  {
    return "[Bus \"" + this.identifier + "\"]";
  }
  
  public void unregister(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Object to unregister must not be null.");
    }
    this.enforcer.a(this);
    Iterator localIterator = this.handlerFinder.aF(paramObject).entrySet().iterator();
    Object localObject3;
    Object localObject1;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject3 = (Map.Entry)localIterator.next();
      localObject1 = (Class)((Map.Entry)localObject3).getKey();
      localObject2 = getProducerForEventType((Class)localObject1);
      localObject3 = (e)((Map.Entry)localObject3).getValue();
      if ((localObject3 == null) || (!((e)localObject3).equals(localObject2))) {
        throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + paramObject.getClass() + " registered?");
      }
      ((e)this.producersByType.remove(localObject1)).aan = false;
    }
    localIterator = this.handlerFinder.aG(paramObject).entrySet().iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (Map.Entry)localIterator.next();
      localObject1 = getHandlersForEventType((Class)((Map.Entry)localObject2).getKey());
      localObject2 = (Collection)((Map.Entry)localObject2).getValue();
      if ((localObject1 == null) || (!((Set)localObject1).containsAll((Collection)localObject2))) {
        throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + paramObject.getClass() + " registered?");
      }
      localObject3 = ((Set)localObject1).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        d locald = (d)((Iterator)localObject3).next();
        if (((Collection)localObject2).contains(locald)) {
          locald.aan = false;
        }
      }
      ((Set)localObject1).removeAll((Collection)localObject2);
    }
  }
  
  static final class a
  {
    final Object cTK;
    final d cTL;
    
    public a(Object paramObject, d paramd)
    {
      this.cTK = paramObject;
      this.cTL = paramd;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/c/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */