.class public interface abstract Lio/intercom/okhttp3/CookieJar;
.super Ljava/lang/Object;


# static fields
.field public static final NO_COOKIES:Lio/intercom/okhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/CookieJar$1;

    invoke-direct {v0}, Lio/intercom/okhttp3/CookieJar$1;-><init>()V

    sput-object v0, Lio/intercom/okhttp3/CookieJar;->NO_COOKIES:Lio/intercom/okhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lio/intercom/okhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract saveFromResponse(Lio/intercom/okhttp3/HttpUrl;Ljava/util/List;)V
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
.end method
