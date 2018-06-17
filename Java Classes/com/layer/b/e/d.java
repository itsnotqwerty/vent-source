package com.layer.b.e;

import java.nio.ByteBuffer;
import java.util.UUID;

public final class d
{
  public static byte[] d(UUID paramUUID)
  {
    ByteBuffer localByteBuffer = ByteBuffer.wrap(new byte[16]);
    localByteBuffer.putLong(paramUUID.getMostSignificantBits());
    localByteBuffer.putLong(paramUUID.getLeastSignificantBits());
    localByteBuffer.position(0);
    return localByteBuffer.array();
  }
  
  public static UUID s(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte);
    paramArrayOfByte.position(0);
    return new UUID(paramArrayOfByte.getLong(), paramArrayOfByte.getLong());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/e/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */