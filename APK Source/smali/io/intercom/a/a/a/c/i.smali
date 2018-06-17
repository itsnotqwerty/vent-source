.class public final Lio/intercom/a/a/a/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final cIc:Lio/intercom/a/a/a/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final cId:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final cIe:Lio/intercom/a/a/a/c/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile cIf:[B

.field final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/i$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/i$1;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/i;->cIc:Lio/intercom/a/a/a/c/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lio/intercom/a/a/a/c/i$a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/intercom/a/a/a/i/h;->fc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/a/a/a/c/i;->cId:Ljava/lang/Object;

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/i$a;

    iput-object v0, p0, Lio/intercom/a/a/a/c/i;->cIe:Lio/intercom/a/a/a/c/i$a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)Lio/intercom/a/a/a/c/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lio/intercom/a/a/a/c/i$a",
            "<TT;>;)",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/i;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)V

    return-object v0
.end method

.method public static eW(Ljava/lang/String;)Lio/intercom/a/a/a/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/i;

    const/4 v1, 0x0

    sget-object v2, Lio/intercom/a/a/a/c/i;->cIc:Lio/intercom/a/a/a/c/i$a;

    invoke-direct {v0, p0, v1, v2}, Lio/intercom/a/a/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/a/a/a/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/i;

    sget-object v1, Lio/intercom/a/a/a/c/i;->cIc:Lio/intercom/a/a/a/c/i$a;

    invoke-direct {v0, p0, p1, v1}, Lio/intercom/a/a/a/c/i;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/intercom/a/a/a/c/i;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/i;

    iget-object v0, p0, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Option{key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
