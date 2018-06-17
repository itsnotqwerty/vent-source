.class public abstract Lio/intercom/android/sdk/models/Upload;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Upload$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAcl()Ljava/lang/String;
.end method

.method public abstract getAwsAccessKey()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getPolicy()Ljava/lang/String;
.end method

.method public abstract getPublicUrl()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public abstract getSuccessActionStatus()Ljava/lang/String;
.end method

.method public abstract getUploadDestination()Ljava/lang/String;
.end method
