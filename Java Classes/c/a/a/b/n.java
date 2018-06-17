package c.a.a.b;

import c.a.a.c.a;
import c.a.a.c.d;
import c.a.a.g;
import java.util.BitSet;

public final class n
  extends c
{
  public final Class<? extends a> LS()
  {
    return d.class;
  }
  
  public final void a(BitSet paramBitSet, int paramInt)
    throws g
  {
    int i = 0;
    byte[] arrayOfByte = new byte[(int)Math.ceil(paramInt / 8.0D)];
    paramInt = 0;
    while (paramInt < paramBitSet.length())
    {
      if (paramBitSet.get(paramInt))
      {
        j = arrayOfByte.length - paramInt / 8 - 1;
        arrayOfByte[j] = ((byte)(arrayOfByte[j] | 1 << paramInt % 8));
      }
      paramInt += 1;
    }
    int j = arrayOfByte.length;
    paramInt = i;
    while (paramInt < j)
    {
      g(arrayOfByte[paramInt]);
      paramInt += 1;
    }
  }
  
  public final BitSet fO(int paramInt)
    throws g
  {
    int i = 0;
    int j = (int)Math.ceil(paramInt / 8.0D);
    byte[] arrayOfByte = new byte[j];
    paramInt = 0;
    while (paramInt < j)
    {
      arrayOfByte[paramInt] = Lx();
      paramInt += 1;
    }
    BitSet localBitSet = new BitSet();
    paramInt = i;
    while (paramInt < arrayOfByte.length * 8)
    {
      if ((arrayOfByte[(arrayOfByte.length - paramInt / 8 - 1)] & 1 << paramInt % 8) > 0) {
        localBitSet.set(paramInt);
      }
      paramInt += 1;
    }
    return localBitSet;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */