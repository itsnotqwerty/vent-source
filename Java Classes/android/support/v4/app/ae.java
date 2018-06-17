package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;
import android.os.Bundle;
import java.util.Set;

public final class ae
{
  final String AD;
  final CharSequence AE;
  final CharSequence[] AF;
  final boolean AG;
  final Set<String> AH;
  final Bundle zp;
  
  static RemoteInput[] b(ae[] paramArrayOfae)
  {
    if (paramArrayOfae == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfae.length];
    int i = 0;
    while (i < paramArrayOfae.length)
    {
      ae localae = paramArrayOfae[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localae.AD).setLabel(localae.AE).setChoices(localae.AF).setAllowFreeFormInput(localae.AG).addExtras(localae.zp).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */