.class public final Lc/a/a/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/a/a/d/c;)Lc/a/a/b/h;
    .locals 1

    new-instance v0, Lc/a/a/b/e;

    invoke-direct {v0, p1}, Lc/a/a/b/e;-><init>(Lc/a/a/d/c;)V

    return-object v0
.end method
