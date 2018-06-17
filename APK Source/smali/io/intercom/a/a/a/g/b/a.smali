.class public final Lio/intercom/a/a/a/g/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/b/e",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cQI:Z

.field private cQJ:Lio/intercom/a/a/a/g/b/b;

.field private final duration:I


# direct methods
.method protected constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/a/a/a/g/b/a;->duration:I

    iput-boolean p2, p0, Lio/intercom/a/a/a/g/b/a;->cQI:Z

    return-void
.end method


# virtual methods
.method public final c(Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/g/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/a;",
            ")",
            "Lio/intercom/a/a/a/g/b/d",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/c/a;->cHG:Lio/intercom/a/a/a/c/a;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lio/intercom/a/a/a/g/b/c;->JO()Lio/intercom/a/a/a/g/b/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/b/a;->cQJ:Lio/intercom/a/a/a/g/b/b;

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/g/b/b;

    iget v1, p0, Lio/intercom/a/a/a/g/b/a;->duration:I

    iget-boolean v2, p0, Lio/intercom/a/a/a/g/b/a;->cQI:Z

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/g/b/b;-><init>(IZ)V

    iput-object v0, p0, Lio/intercom/a/a/a/g/b/a;->cQJ:Lio/intercom/a/a/a/g/b/b;

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/g/b/a;->cQJ:Lio/intercom/a/a/a/g/b/b;

    goto :goto_0
.end method
