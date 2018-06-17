package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.model.DeleteObjectsResult.DeletedObject;
import com.amazonaws.services.s3.model.MultiObjectDeleteException.DeleteError;
import java.util.ArrayList;
import java.util.List;

public class DeleteObjectsResponse
{
  public List<DeleteObjectsResult.DeletedObject> apP;
  public List<MultiObjectDeleteException.DeleteError> apQ;
  
  public DeleteObjectsResponse()
  {
    this(new ArrayList(), new ArrayList());
  }
  
  private DeleteObjectsResponse(List<DeleteObjectsResult.DeletedObject> paramList, List<MultiObjectDeleteException.DeleteError> paramList1)
  {
    this.apP = paramList;
    this.apQ = paramList1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/DeleteObjectsResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */