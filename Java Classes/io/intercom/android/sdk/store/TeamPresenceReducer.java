package io.intercom.android.sdk.store;

import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.models.TeamPresence;
import java.util.Collections;

class TeamPresenceReducer
  implements Store.Reducer<TeamPresence>
{
  static final TeamPresence INITIAL_STATE = TeamPresence.create(Collections.emptyList(), "", "");
  
  public TeamPresence reduce(Action<?> paramAction, TeamPresence paramTeamPresence)
  {
    switch (paramAction.type())
    {
    default: 
      return paramTeamPresence;
    }
    return (TeamPresence)paramAction.value();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/TeamPresenceReducer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */