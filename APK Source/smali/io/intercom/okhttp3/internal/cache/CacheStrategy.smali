.class public final Lio/intercom/okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lio/intercom/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lio/intercom/okhttp3/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lio/intercom/okhttp3/Request;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lio/intercom/okhttp3/Response;

    return-void
.end method

.method public static isCacheable(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Request;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/okhttp3/Request;->cacheControl()Lio/intercom/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
