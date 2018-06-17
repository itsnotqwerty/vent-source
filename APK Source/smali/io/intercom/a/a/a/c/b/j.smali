.class public final Lio/intercom/a/a/a/c/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/b/h$a;
.implements Lio/intercom/a/a/a/c/b/l;
.implements Lio/intercom/a/a/a/c/b/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/j$b;,
        Lio/intercom/a/a/a/c/b/j$a;,
        Lio/intercom/a/a/a/c/b/j$c;,
        Lio/intercom/a/a/a/c/b/j$d;
    }
.end annotation


# instance fields
.field public final cKg:Lio/intercom/a/a/a/c/b/r;

.field private final cKh:Lio/intercom/a/a/a/c/b/n;

.field public final cKi:Lio/intercom/a/a/a/c/b/b/h;

.field public final cKj:Lio/intercom/a/a/a/c/b/j$b;

.field private final cKk:Lio/intercom/a/a/a/c/b/x;

.field private final cKl:Lio/intercom/a/a/a/c/b/j$c;

.field public final cKm:Lio/intercom/a/a/a/c/b/j$a;

.field public final cKn:Lio/intercom/a/a/a/c/b/a;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/b/a$a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Z)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/intercom/a/a/a/c/b/j;-><init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/b/a$a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;ZB)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/b/a$a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;ZB)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/j;->cKi:Lio/intercom/a/a/a/c/b/b/h;

    new-instance v0, Lio/intercom/a/a/a/c/b/j$c;

    invoke-direct {v0, p2}, Lio/intercom/a/a/a/c/b/j$c;-><init>(Lio/intercom/a/a/a/c/b/b/a$a;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKl:Lio/intercom/a/a/a/c/b/j$c;

    new-instance v0, Lio/intercom/a/a/a/c/b/a;

    invoke-direct {v0, p7}, Lio/intercom/a/a/a/c/b/a;-><init>(Z)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKn:Lio/intercom/a/a/a/c/b/a;

    iput-object p0, v0, Lio/intercom/a/a/a/c/b/a;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    new-instance v0, Lio/intercom/a/a/a/c/b/n;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/n;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKh:Lio/intercom/a/a/a/c/b/n;

    new-instance v0, Lio/intercom/a/a/a/c/b/r;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/r;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKg:Lio/intercom/a/a/a/c/b/r;

    new-instance v0, Lio/intercom/a/a/a/c/b/j$b;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/j$b;-><init>(Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/l;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKj:Lio/intercom/a/a/a/c/b/j$b;

    new-instance v0, Lio/intercom/a/a/a/c/b/j$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/j;->cKl:Lio/intercom/a/a/a/c/b/j$c;

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/b/j$a;-><init>(Lio/intercom/a/a/a/c/b/g$d;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKm:Lio/intercom/a/a/a/c/b/j$a;

    new-instance v0, Lio/intercom/a/a/a/c/b/x;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/x;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKk:Lio/intercom/a/a/a/c/b/x;

    invoke-interface {p1, p0}, Lio/intercom/a/a/a/c/b/b/h;->a(Lio/intercom/a/a/a/c/b/b/h$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLio/intercom/a/a/a/c/h;)V
    .locals 5

    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;",
            "Lio/intercom/a/a/a/c/h;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKg:Lio/intercom/a/a/a/c/b/r;

    invoke-virtual {v0, p2, p1}, Lio/intercom/a/a/a/c/b/r;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/k;)V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    if-eqz p3, :cond_0

    invoke-virtual {p3, p2, p0}, Lio/intercom/a/a/a/c/b/o;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o$a;)V

    iget-boolean v0, p3, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKn:Lio/intercom/a/a/a/c/b/a;

    invoke-virtual {v0, p2, p3}, Lio/intercom/a/a/a/c/b/a;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKg:Lio/intercom/a/a/a/c/b/r;

    invoke-virtual {v0, p2, p1}, Lio/intercom/a/a/a/c/b/r;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/k;)V

    return-void
.end method

.method public final b(Lio/intercom/a/a/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKk:Lio/intercom/a/a/a/c/b/x;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/x;->d(Lio/intercom/a/a/a/c/b/u;)V

    return-void
.end method

.method public final b(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKn:Lio/intercom/a/a/a/c/b/a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/a;->cIE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/a$b;->reset()V

    :cond_0
    iget-boolean v0, p2, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKi:Lio/intercom/a/a/a/c/b/b/h;

    invoke-interface {v0, p1, p2}, Lio/intercom/a/a/a/c/b/b/h;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/j;->cKk:Lio/intercom/a/a/a/c/b/x;

    invoke-virtual {v0, p2}, Lio/intercom/a/a/a/c/b/x;->d(Lio/intercom/a/a/a/c/b/u;)V

    goto :goto_0
.end method
