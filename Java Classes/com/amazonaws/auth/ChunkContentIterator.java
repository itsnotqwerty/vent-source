package com.amazonaws.auth;

class ChunkContentIterator
{
  final byte[] ans;
  int pos;
  
  public ChunkContentIterator(byte[] paramArrayOfByte)
  {
    this.ans = paramArrayOfByte;
  }
  
  public final boolean hasNext()
  {
    return this.pos < this.ans.length;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/ChunkContentIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */