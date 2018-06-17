.class public final Lio/intercom/a/a/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field bgColor:I

.field cHa:[I

.field public cHb:I

.field cHc:Lio/intercom/a/a/a/b/b;

.field final cHd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field cHe:Z

.field cHf:I

.field cHg:I

.field cHh:I

.field cHi:I

.field public height:I

.field public status:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/b/c;->cHa:[I

    iput v1, p0, Lio/intercom/a/a/a/b/c;->status:I

    iput v1, p0, Lio/intercom/a/a/a/b/c;->cHb:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/b/c;->cHi:I

    return-void
.end method
