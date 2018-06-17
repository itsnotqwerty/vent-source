.class public interface abstract Lio/intercom/okhttp3/Authenticator;
.super Ljava/lang/Object;


# static fields
.field public static final NONE:Lio/intercom/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/Authenticator$1;

    invoke-direct {v0}, Lio/intercom/okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lio/intercom/okhttp3/Authenticator;->NONE:Lio/intercom/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lio/intercom/okhttp3/Route;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
