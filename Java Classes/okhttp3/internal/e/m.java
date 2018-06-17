package okhttp3.internal.e;

public final class m
{
  int set;
  final int[] values = new int[10];
  
  final m aV(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= this.values.length)) {
      return this;
    }
    this.set = (1 << paramInt1 | this.set);
    this.values[paramInt1] = paramInt2;
    return this;
  }
  
  final int getHeaderTableSize()
  {
    if ((this.set & 0x2) != 0) {
      return this.values[1];
    }
    return -1;
  }
  
  public final int getInitialWindowSize()
  {
    if ((this.set & 0x80) != 0) {
      return this.values[7];
    }
    return 65535;
  }
  
  final boolean isSet(int paramInt)
  {
    return (1 << paramInt & this.set) != 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/e/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */