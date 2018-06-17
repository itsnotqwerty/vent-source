package android.support.v7.widget;

final class bf
{
  int EN = Integer.MIN_VALUE;
  int agA = 0;
  int agB = 0;
  boolean agC = false;
  int agz = Integer.MIN_VALUE;
  boolean hm = false;
  int tD = 0;
  int tF = 0;
  
  public final void ai(int paramInt1, int paramInt2)
  {
    this.agz = paramInt1;
    this.EN = paramInt2;
    this.agC = true;
    if (this.hm)
    {
      if (paramInt2 != Integer.MIN_VALUE) {
        this.tD = paramInt2;
      }
      if (paramInt1 != Integer.MIN_VALUE) {
        this.tF = paramInt1;
      }
    }
    do
    {
      return;
      if (paramInt1 != Integer.MIN_VALUE) {
        this.tD = paramInt1;
      }
    } while (paramInt2 == Integer.MIN_VALUE);
    this.tF = paramInt2;
  }
  
  public final void aj(int paramInt1, int paramInt2)
  {
    this.agC = false;
    if (paramInt1 != Integer.MIN_VALUE)
    {
      this.agA = paramInt1;
      this.tD = paramInt1;
    }
    if (paramInt2 != Integer.MIN_VALUE)
    {
      this.agB = paramInt2;
      this.tF = paramInt2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */