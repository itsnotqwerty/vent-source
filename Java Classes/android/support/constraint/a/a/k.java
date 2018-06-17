package android.support.constraint.a.a;

public final class k
  extends l
{
  float value = 0.0F;
  
  public final void p(int paramInt)
  {
    if ((this.state == 0) || (this.value != paramInt))
    {
      this.value = paramInt;
      if (this.state == 1) {
        invalidate();
      }
      aU();
    }
  }
  
  public final void reset()
  {
    super.reset();
    this.value = 0.0F;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */