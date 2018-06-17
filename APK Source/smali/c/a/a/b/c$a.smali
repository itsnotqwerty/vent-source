.class public final Lc/a/a/b/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final brA:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/a/a/b/c$a;->brA:J

    return-void
.end method


# virtual methods
.method public final a(Lc/a/a/d/c;)Lc/a/a/b/h;
    .locals 4

    new-instance v0, Lc/a/a/b/c;

    iget-wide v2, p0, Lc/a/a/b/c$a;->brA:J

    invoke-direct {v0, p1, v2, v3}, Lc/a/a/b/c;-><init>(Lc/a/a/d/c;J)V

    return-object v0
.end method
