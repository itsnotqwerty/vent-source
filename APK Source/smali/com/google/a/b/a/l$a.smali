.class final Lcom/google/a/b/a/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic biE:Lcom/google/a/b/a/l;


# direct methods
.method private constructor <init>(Lcom/google/a/b/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/a/l$a;->biE:Lcom/google/a/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/b/a/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/a/b/a/l$a;-><init>(Lcom/google/a/b/a/l;)V

    return-void
.end method


# virtual methods
.method public final ac(Ljava/lang/Object;)Lcom/google/a/k;
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/a/l$a;->biE:Lcom/google/a/b/a/l;

    iget-object v0, v0, Lcom/google/a/b/a/l;->bil:Lcom/google/a/f;

    if-nez p1, :cond_0

    sget-object v0, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/google/a/b/a/f;

    invoke-direct {v2}, Lcom/google/a/b/a/f;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/a/d/c;)V

    invoke-virtual {v2}, Lcom/google/a/b/a/f;->vz()Lcom/google/a/k;

    move-result-object v0

    goto :goto_0
.end method
