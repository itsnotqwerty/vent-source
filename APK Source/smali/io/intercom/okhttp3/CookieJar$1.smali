.class final Lio/intercom/okhttp3/CookieJar$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadForRequest(Lio/intercom/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final saveFromResponse(Lio/intercom/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
