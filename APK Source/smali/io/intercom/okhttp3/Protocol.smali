.class public final enum Lio/intercom/okhttp3/Protocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/okhttp3/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/okhttp3/Protocol;

.field public static final enum HTTP_1_0:Lio/intercom/okhttp3/Protocol;

.field public static final enum HTTP_1_1:Lio/intercom/okhttp3/Protocol;

.field public static final enum HTTP_2:Lio/intercom/okhttp3/Protocol;

.field public static final enum SPDY_3:Lio/intercom/okhttp3/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/intercom/okhttp3/Protocol;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lio/intercom/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_0:Lio/intercom/okhttp3/Protocol;

    new-instance v0, Lio/intercom/okhttp3/Protocol;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lio/intercom/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    new-instance v0, Lio/intercom/okhttp3/Protocol;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lio/intercom/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/okhttp3/Protocol;->SPDY_3:Lio/intercom/okhttp3/Protocol;

    new-instance v0, Lio/intercom/okhttp3/Protocol;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    invoke-direct {v0, v1, v6, v2}, Lio/intercom/okhttp3/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/intercom/okhttp3/Protocol;

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_0:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/okhttp3/Protocol;->SPDY_3:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    aput-object v1, v0, v6

    sput-object v0, Lio/intercom/okhttp3/Protocol;->$VALUES:[Lio/intercom/okhttp3/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lio/intercom/okhttp3/Protocol;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_0:Lio/intercom/okhttp3/Protocol;

    iget-object v0, v0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_0:Lio/intercom/okhttp3/Protocol;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    iget-object v0, v0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    iget-object v0, v0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/intercom/okhttp3/Protocol;->SPDY_3:Lio/intercom/okhttp3/Protocol;

    iget-object v0, v0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lio/intercom/okhttp3/Protocol;->SPDY_3:Lio/intercom/okhttp3/Protocol;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/okhttp3/Protocol;
    .locals 1

    const-class v0, Lio/intercom/okhttp3/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Protocol;

    return-object v0
.end method

.method public static values()[Lio/intercom/okhttp3/Protocol;
    .locals 1

    sget-object v0, Lio/intercom/okhttp3/Protocol;->$VALUES:[Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0}, [Lio/intercom/okhttp3/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/Protocol;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
