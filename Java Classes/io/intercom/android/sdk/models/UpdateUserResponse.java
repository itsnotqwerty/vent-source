package io.intercom.android.sdk.models;

public class UpdateUserResponse
  extends UsersResponse
{
  private final TeamPresence teamPresence;
  
  UpdateUserResponse(Builder paramBuilder)
  {
    super(paramBuilder);
    if (paramBuilder.team_presence == null) {}
    for (paramBuilder = new TeamPresence.Builder().build();; paramBuilder = paramBuilder.team_presence.build())
    {
      this.teamPresence = paramBuilder;
      return;
    }
  }
  
  public TeamPresence getTeamPresence()
  {
    return this.teamPresence;
  }
  
  public static final class Builder
    extends UsersResponse.Builder
  {
    TeamPresence.Builder team_presence;
    
    public final UpdateUserResponse build()
    {
      return new UpdateUserResponse(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/UpdateUserResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */