package android.support.transition;

import java.lang.reflect.Method;

final class aq
  extends ap
{
  private static Method vL;
  private static boolean vM;
  
  /* Error */
  public final void b(android.view.View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    // Byte code:
    //   0: getstatic 23	android/support/transition/aq:vM	Z
    //   3: ifne +55 -> 58
    //   6: ldc 25
    //   8: ldc 27
    //   10: iconst_4
    //   11: anewarray 29	java/lang/Class
    //   14: dup
    //   15: iconst_0
    //   16: getstatic 35	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   19: aastore
    //   20: dup
    //   21: iconst_1
    //   22: getstatic 35	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   25: aastore
    //   26: dup
    //   27: iconst_2
    //   28: getstatic 35	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   31: aastore
    //   32: dup
    //   33: iconst_3
    //   34: getstatic 35	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   37: aastore
    //   38: invokevirtual 39	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   41: astore 6
    //   43: aload 6
    //   45: putstatic 41	android/support/transition/aq:vL	Ljava/lang/reflect/Method;
    //   48: aload 6
    //   50: iconst_1
    //   51: invokevirtual 47	java/lang/reflect/Method:setAccessible	(Z)V
    //   54: iconst_1
    //   55: putstatic 23	android/support/transition/aq:vM	Z
    //   58: getstatic 41	android/support/transition/aq:vL	Ljava/lang/reflect/Method;
    //   61: ifnull +45 -> 106
    //   64: getstatic 41	android/support/transition/aq:vL	Ljava/lang/reflect/Method;
    //   67: aload_1
    //   68: iconst_4
    //   69: anewarray 49	java/lang/Object
    //   72: dup
    //   73: iconst_0
    //   74: iload_2
    //   75: invokestatic 53	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   78: aastore
    //   79: dup
    //   80: iconst_1
    //   81: iload_3
    //   82: invokestatic 53	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   85: aastore
    //   86: dup
    //   87: iconst_2
    //   88: iload 4
    //   90: invokestatic 53	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   93: aastore
    //   94: dup
    //   95: iconst_3
    //   96: iload 5
    //   98: invokestatic 53	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   101: aastore
    //   102: invokevirtual 57	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   105: pop
    //   106: return
    //   107: astore 6
    //   109: ldc 59
    //   111: ldc 61
    //   113: aload 6
    //   115: invokestatic 67	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   118: pop
    //   119: goto -65 -> 54
    //   122: astore_1
    //   123: new 69	java/lang/RuntimeException
    //   126: dup
    //   127: aload_1
    //   128: invokevirtual 73	java/lang/reflect/InvocationTargetException:getCause	()Ljava/lang/Throwable;
    //   131: invokespecial 76	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   134: athrow
    //   135: astore_1
    //   136: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	aq
    //   0	137	1	paramView	android.view.View
    //   0	137	2	paramInt1	int
    //   0	137	3	paramInt2	int
    //   0	137	4	paramInt3	int
    //   0	137	5	paramInt4	int
    //   41	8	6	localMethod	Method
    //   107	7	6	localNoSuchMethodException	NoSuchMethodException
    // Exception table:
    //   from	to	target	type
    //   6	54	107	java/lang/NoSuchMethodException
    //   64	106	122	java/lang/reflect/InvocationTargetException
    //   64	106	135	java/lang/IllegalAccessException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */