package io.intercom.android.sdk.models;

import io.intercom.android.sdk.utilities.NullSafety;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

public class Conversation
{
  private final List<Part> conversationParts;
  private final List<Participant> groupConversationParticipants;
  private final String id;
  private final LastParticipatingAdmin lastParticipatingAdmin;
  private final List<OperatorClientCondition> operatorClientConditions;
  private final Map<String, Participant> participants;
  private final boolean read;
  private final boolean userParticipated;
  
  public Conversation()
  {
    this(new Builder());
  }
  
  Conversation(Builder paramBuilder)
  {
    this.id = NullSafety.valueOrEmpty(paramBuilder.id);
    this.read = paramBuilder.read;
    this.userParticipated = paramBuilder.user_participated;
    this.participants = new LinkedHashMap();
    Iterator localIterator;
    Object localObject;
    if (paramBuilder.participants != null)
    {
      localIterator = paramBuilder.participants.iterator();
      while (localIterator.hasNext())
      {
        localObject = ((Participant.Builder)localIterator.next()).build();
        this.participants.put(((Participant)localObject).getId(), localObject);
      }
    }
    this.conversationParts = new ArrayList();
    if (paramBuilder.conversation_parts != null)
    {
      localIterator = paramBuilder.conversation_parts.iterator();
      while (localIterator.hasNext())
      {
        localObject = ((Part.Builder)localIterator.next()).build();
        ((Part)localObject).setParticipant(getParticipant(((Part)localObject).getParticipantId()));
        this.conversationParts.add(localObject);
      }
    }
    this.groupConversationParticipants = new ArrayList();
    if (paramBuilder.group_conversation_participant_ids != null)
    {
      localIterator = paramBuilder.group_conversation_participant_ids.iterator();
      while (localIterator.hasNext())
      {
        localObject = (String)localIterator.next();
        if (localObject != null) {
          this.groupConversationParticipants.add(getParticipant((String)localObject));
        }
      }
    }
    this.operatorClientConditions = new ArrayList();
    if (paramBuilder.operator_client_conditions != null)
    {
      localIterator = paramBuilder.operator_client_conditions.iterator();
      while (localIterator.hasNext())
      {
        localObject = (OperatorClientCondition.Builder)localIterator.next();
        if (localObject != null) {
          this.operatorClientConditions.add(((OperatorClientCondition.Builder)localObject).build());
        }
      }
    }
    if (paramBuilder.last_participating_admin != null) {}
    for (paramBuilder = paramBuilder.last_participating_admin.build();; paramBuilder = LastParticipatingAdmin.NULL)
    {
      this.lastParticipatingAdmin = paramBuilder;
      return;
    }
  }
  
  private Conversation(Map<String, Participant> paramMap, List<Part> paramList, List<Participant> paramList1, List<OperatorClientCondition> paramList2, LastParticipatingAdmin paramLastParticipatingAdmin, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.participants = paramMap;
    this.conversationParts = paramList;
    this.groupConversationParticipants = paramList1;
    this.operatorClientConditions = paramList2;
    this.lastParticipatingAdmin = paramLastParticipatingAdmin;
    this.id = paramString;
    this.userParticipated = paramBoolean1;
    this.read = paramBoolean2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      return bool1;
                      bool1 = bool2;
                    } while (paramObject == null);
                    bool1 = bool2;
                  } while (getClass() != paramObject.getClass());
                  paramObject = (Conversation)paramObject;
                  bool1 = bool2;
                } while (this.userParticipated != ((Conversation)paramObject).userParticipated);
                bool1 = bool2;
              } while (this.read != ((Conversation)paramObject).read);
              bool1 = bool2;
            } while (!this.participants.equals(((Conversation)paramObject).participants));
            bool1 = bool2;
          } while (!this.conversationParts.equals(((Conversation)paramObject).conversationParts));
          bool1 = bool2;
        } while (!this.groupConversationParticipants.equals(((Conversation)paramObject).groupConversationParticipants));
        bool1 = bool2;
      } while (!this.operatorClientConditions.equals(((Conversation)paramObject).operatorClientConditions));
      bool1 = bool2;
    } while (!this.lastParticipatingAdmin.equals(((Conversation)paramObject).lastParticipatingAdmin));
    return this.id.equals(((Conversation)paramObject).id);
  }
  
  public List<Participant> getGroupConversationParticipants()
  {
    return this.groupConversationParticipants;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public Participant getLastAdmin()
  {
    ListIterator localListIterator = new ArrayList(this.participants.values()).listIterator(this.participants.values().size());
    while (localListIterator.hasPrevious())
    {
      Participant localParticipant = (Participant)localListIterator.previous();
      if (localParticipant.isAdmin()) {
        return localParticipant;
      }
    }
    return Participant.NULL;
  }
  
  public Part getLastAdminPart()
  {
    int i = this.conversationParts.size() - 1;
    while (i >= 0)
    {
      Part localPart = (Part)this.conversationParts.get(i);
      if (localPart.isAdmin()) {
        return localPart;
      }
      i -= 1;
    }
    return Part.NULL;
  }
  
  public Part getLastPart()
  {
    if (this.conversationParts.isEmpty()) {
      return Part.NULL;
    }
    return (Part)this.conversationParts.get(this.conversationParts.size() - 1);
  }
  
  public LastParticipatingAdmin getLastParticipatingAdmin()
  {
    return this.lastParticipatingAdmin;
  }
  
  public Part getLastUserVisiblePart()
  {
    int i = this.conversationParts.size() - 1;
    while (i >= 0)
    {
      Part localPart = (Part)this.conversationParts.get(i);
      if (!localPart.isEvent().booleanValue()) {
        return localPart;
      }
      i -= 1;
    }
    return Part.NULL;
  }
  
  public List<OperatorClientCondition> getOperatorClientConditions()
  {
    return this.operatorClientConditions;
  }
  
  public Participant getParticipant(String paramString)
  {
    Participant localParticipant = (Participant)this.participants.get(paramString);
    paramString = localParticipant;
    if (localParticipant == null) {
      paramString = Participant.NULL;
    }
    return paramString;
  }
  
  public Map<String, Participant> getParticipants()
  {
    return this.participants;
  }
  
  public List<Part> getParts()
  {
    return this.conversationParts;
  }
  
  public int hashCode()
  {
    int j = 1;
    int k = this.participants.hashCode();
    int m = this.conversationParts.hashCode();
    int n = this.groupConversationParticipants.hashCode();
    int i1 = this.operatorClientConditions.hashCode();
    int i2 = this.lastParticipatingAdmin.hashCode();
    int i3 = this.id.hashCode();
    int i;
    if (this.userParticipated)
    {
      i = 1;
      if (!this.read) {
        break label126;
      }
    }
    for (;;)
    {
      return (i + (((((k * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31) * 31 + j;
      i = 0;
      break;
      label126:
      j = 0;
    }
  }
  
  public boolean isAdminReply()
  {
    return this.participants.size() > 1;
  }
  
  public boolean isRead()
  {
    return this.read;
  }
  
  public boolean isUserParticipated()
  {
    return this.userParticipated;
  }
  
  public Conversation withRead(boolean paramBoolean)
  {
    return new Conversation(this.participants, this.conversationParts, this.groupConversationParticipants, this.operatorClientConditions, this.lastParticipatingAdmin, this.id, this.userParticipated, paramBoolean);
  }
  
  public static final class Builder
  {
    List<Part.Builder> conversation_parts;
    List<String> group_conversation_participant_ids;
    String id;
    LastParticipatingAdmin.Builder last_participating_admin;
    List<OperatorClientCondition.Builder> operator_client_conditions;
    List<Participant.Builder> participants;
    boolean read;
    boolean user_participated;
    
    public final Conversation build()
    {
      return new Conversation(this);
    }
    
    public final Builder withId(String paramString)
    {
      this.id = paramString;
      return this;
    }
    
    public final Builder withParticipants(List<Participant.Builder> paramList)
    {
      this.participants = paramList;
      return this;
    }
    
    public final Builder withParts(List<Part.Builder> paramList)
    {
      this.conversation_parts = paramList;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Conversation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */