.class public Lio/intercom/android/sdk/models/Sheet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/Sheet$Builder;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/models/Sheet$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/models/Sheet$Builder;->sheet_request_body:Lio/intercom/a/b/a/l;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/Sheet;->body:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/Sheet$Builder;->sheet_request_body:Lio/intercom/a/b/a/l;

    invoke-virtual {v0}, Lio/intercom/a/b/a/l;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/Sheet;->body:Ljava/lang/String;

    return-object v0
.end method
