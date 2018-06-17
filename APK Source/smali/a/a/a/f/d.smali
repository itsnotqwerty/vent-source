.class public La/a/a/f/d;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final ctD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/InetAddress;",
            "Ljava/util/Set",
            "<",
            "La/a/a/j;",
            ">;>;"
        }
    .end annotation
.end field

.field ctE:I

.field final ctv:La/a/a/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/f/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/f/d;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(La/a/a/f/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/a/a/f/d;->ctD:Ljava/util/HashMap;

    iput-object p1, p0, La/a/a/f/d;->ctv:La/a/a/f/b;

    return-void
.end method


# virtual methods
.method final Gk()V
    .locals 1

    iget v0, p0, La/a/a/f/d;->ctE:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/f/d;->ctE:I

    return-void
.end method
