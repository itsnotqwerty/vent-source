.class public final Lc/a/a/b/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/b/b$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lc/a/a/b/b$a;->a:Z

    iput-boolean v1, p0, Lc/a/a/b/b$a;->b:Z

    iput-boolean v0, p0, Lc/a/a/b/b$a;->a:Z

    iput-boolean v1, p0, Lc/a/a/b/b$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lc/a/a/d/c;)Lc/a/a/b/h;
    .locals 3

    new-instance v0, Lc/a/a/b/b;

    iget-boolean v1, p0, Lc/a/a/b/b$a;->a:Z

    iget-boolean v2, p0, Lc/a/a/b/b$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lc/a/a/b/b;-><init>(Lc/a/a/d/c;ZZ)V

    return-object v0
.end method
