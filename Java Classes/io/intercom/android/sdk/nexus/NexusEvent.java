package io.intercom.android.sdk.nexus;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

public class NexusEvent
{
  static final String ADMIN_AVATAR = "adminAvatar";
  static final String ADMIN_ID = "adminId";
  static final String ADMIN_NAME = "adminName";
  static final String ADMIN_TIMESTAMP = "adminTimestamp";
  static final String ASSIGNEE_ID = "assigneeId";
  static final String CONVERSATION_ID = "conversationId";
  static final String EVENT_DATA = "eventData";
  static final String EVENT_GUID = "eventGuid";
  static final String EVENT_NAME = "eventName";
  static final String NX_FROM_USER = "nx.FromUser";
  static final String NX_TOPICS = "nx.Topics";
  static final String NX_TO_USER = "nx.ToUser";
  static final String TOPIC_PREFIX_CONVERSATION = "conversation/";
  private final EventData eventData;
  private final NexusEventType eventType;
  private final String guid;
  private final List<String> topics;
  private final String userId;
  
  public NexusEvent(Builder paramBuilder)
  {
    this.eventType = paramBuilder.eventName;
    this.eventData = new EventData();
    Iterator localIterator;
    String str;
    if (paramBuilder.eventData != null)
    {
      localIterator = paramBuilder.eventData.keySet().iterator();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        Object localObject = paramBuilder.eventData.get(str);
        if (localObject != null) {
          this.eventData.put(str, localObject);
        }
      }
    }
    this.topics = new ArrayList();
    if (paramBuilder.topics != null)
    {
      localIterator = paramBuilder.topics.iterator();
      while (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        if (!TextUtils.isEmpty(str)) {
          this.topics.add(str);
        }
      }
    }
    this.guid = UUID.randomUUID().toString();
    if (paramBuilder.userId != null) {}
    for (paramBuilder = paramBuilder.userId;; paramBuilder = "")
    {
      this.userId = paramBuilder;
      return;
    }
  }
  
  public NexusEvent(JSONObject paramJSONObject)
  {
    this.eventType = NexusEventType.safeValueOf(paramJSONObject.optString("eventName"));
    Object localObject1 = paramJSONObject.optJSONObject("eventData");
    Object localObject2;
    if ((localObject1 != null) && (((JSONObject)localObject1).length() > 0))
    {
      this.eventData = new EventData(((JSONObject)localObject1).length());
      localObject2 = ((JSONObject)localObject1).keys();
    }
    while (((Iterator)localObject2).hasNext())
    {
      String str = (String)((Iterator)localObject2).next();
      Object localObject3 = ((JSONObject)localObject1).opt(str);
      if (localObject3 != null)
      {
        this.eventData.put(str, localObject3);
        continue;
        this.eventData = new EventData();
      }
    }
    this.topics = new ArrayList();
    localObject1 = paramJSONObject.optJSONArray("nx.Topics");
    if (localObject1 != null)
    {
      int i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        localObject2 = ((JSONArray)localObject1).optString(i);
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          this.topics.add(localObject2);
        }
        i += 1;
      }
    }
    this.guid = paramJSONObject.optString("eventGuid");
    if (paramJSONObject.has("nx.ToUser"))
    {
      this.userId = paramJSONObject.optString("nx.ToUser");
      return;
    }
    this.userId = paramJSONObject.optString("nx.FromUser");
  }
  
  private static List<String> conversationTopics(String paramString)
  {
    return Collections.singletonList("conversation/" + paramString);
  }
  
  public static NexusEvent getAdminIsTypingEvent(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    EventData localEventData = new EventData(4);
    localEventData.put("conversationId", paramString1);
    localEventData.put("adminId", paramString2);
    localEventData.put("adminName", paramString3);
    localEventData.put("adminAvatar", paramString4);
    return new Builder(NexusEventType.AdminIsTyping).withEventData(localEventData).withUserId(paramString5).withTopics(conversationTopics(paramString1)).build();
  }
  
  public static NexusEvent getAdminIsTypingNoteEvent(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    EventData localEventData = new EventData(4);
    localEventData.put("adminId", paramString2);
    localEventData.put("conversationId", paramString1);
    localEventData.put("adminName", paramString3);
    localEventData.put("adminAvatar", paramString4);
    return new Builder(NexusEventType.AdminIsTypingANote).withEventData(localEventData).withTopics(conversationTopics(paramString1)).withUserId(paramString5).build();
  }
  
  public static NexusEvent getConversationAssignedEvent(String paramString1, String paramString2, String paramString3)
  {
    EventData localEventData = new EventData(3);
    localEventData.put("adminId", paramString2);
    localEventData.put("conversationId", paramString1);
    localEventData.put("assigneeId", paramString3);
    return new Builder(NexusEventType.ConversationAssigned).withEventData(localEventData).build();
  }
  
  public static NexusEvent getConversationClosedEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(2);
    localEventData.put("adminId", paramString2);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.ConversationClosed).withEventData(localEventData).build();
  }
  
  public static NexusEvent getConversationReopenedEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(2);
    localEventData.put("adminId", paramString2);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.ConversationReopened).withEventData(localEventData).build();
  }
  
  public static NexusEvent getConversationSeenAdminEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(1);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.UserContentSeenByAdmin).withEventData(localEventData).withTopics(conversationTopics(paramString1)).withUserId(paramString2).build();
  }
  
  public static NexusEvent getConversationSeenEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(1);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.ConversationSeen).withEventData(localEventData).withTopics(conversationTopics(paramString1)).withUserId(paramString2).build();
  }
  
  public static NexusEvent getNewCommentEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(1);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.NewComment).withEventData(localEventData).withTopics(conversationTopics(paramString1)).withUserId(paramString2).build();
  }
  
  public static NexusEvent getNewNoteEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(2);
    localEventData.put("adminId", paramString2);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.NewNote).withEventData(localEventData).build();
  }
  
  public static NexusEvent getSubscribeEvent(List<String> paramList)
  {
    return new Builder(NexusEventType.Subscribe).withTopics(paramList).build();
  }
  
  public static NexusEvent getUnsubscribeEvent(List<String> paramList)
  {
    return new Builder(NexusEventType.Unsubscribe).withTopics(paramList).build();
  }
  
  public static NexusEvent getUserIsTypingEvent(String paramString1, String paramString2)
  {
    EventData localEventData = new EventData(1);
    localEventData.put("conversationId", paramString1);
    return new Builder(NexusEventType.UserIsTyping).withEventData(localEventData).withTopics(conversationTopics(paramString1)).withUserId(paramString2).build();
  }
  
  public static NexusEvent getUserPresenceEvent()
  {
    return new Builder(NexusEventType.UserPresence).build();
  }
  
  public EventData getEventData()
  {
    return this.eventData;
  }
  
  public NexusEventType getEventType()
  {
    return this.eventType;
  }
  
  public String getGuid()
  {
    return this.guid;
  }
  
  public List<String> getTopics()
  {
    return this.topics;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String toStringEncodedJsonObject()
  {
    return this.eventType.toStringEncodedJsonObject(this);
  }
  
  static class Builder
  {
    EventData eventData;
    final NexusEventType eventName;
    List<String> topics;
    String userId;
    
    Builder(NexusEventType paramNexusEventType)
    {
      this.eventName = paramNexusEventType;
    }
    
    public NexusEvent build()
    {
      return new NexusEvent(this);
    }
    
    public Builder withEventData(EventData paramEventData)
    {
      this.eventData = paramEventData;
      return this;
    }
    
    public Builder withTopics(List<String> paramList)
    {
      this.topics = paramList;
      return this;
    }
    
    public Builder withUserId(String paramString)
    {
      this.userId = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */