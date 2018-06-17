.class public final Lio/intercom/android/sdk/models/Sheet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/Sheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field sheet_request_body:Lio/intercom/a/b/a/l;

.field sheet_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/Sheet;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/models/Sheet;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/models/Sheet;-><init>(Lio/intercom/android/sdk/models/Sheet$Builder;)V

    return-object v0
.end method
