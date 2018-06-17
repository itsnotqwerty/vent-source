.class public final Lio/intercom/a/a/a/g/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private cQI:Z

.field private final cQK:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/b/a$a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lio/intercom/a/a/a/g/b/a$a;->cQK:I

    return-void
.end method


# virtual methods
.method public final JM()Lio/intercom/a/a/a/g/b/a;
    .locals 3

    new-instance v0, Lio/intercom/a/a/a/g/b/a;

    iget v1, p0, Lio/intercom/a/a/a/g/b/a$a;->cQK:I

    iget-boolean v2, p0, Lio/intercom/a/a/a/g/b/a$a;->cQI:Z

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/g/b/a;-><init>(IZ)V

    return-object v0
.end method
