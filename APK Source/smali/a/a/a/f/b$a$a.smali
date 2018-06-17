.class final La/a/a/f/b$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final ctt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field final ctu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(Ljava/util/Random;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/f/b$a$a;->ctt:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/f/b$a$a;->ctu:Ljava/util/List;

    iput-object p1, p0, La/a/a/f/b$a$a;->random:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Random;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/f/b$a$a;-><init>(Ljava/util/Random;)V

    return-void
.end method


# virtual methods
.method public final Gj()La/a/a/f/b$a;
    .locals 5

    new-instance v0, La/a/a/f/b$a;

    iget-object v1, p0, La/a/a/f/b$a$a;->ctt:Ljava/util/List;

    iget-object v2, p0, La/a/a/f/b$a$a;->ctu:Ljava/util/List;

    iget-object v3, p0, La/a/a/f/b$a$a;->random:Ljava/util/Random;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f/b$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;B)V

    return-object v0
.end method
