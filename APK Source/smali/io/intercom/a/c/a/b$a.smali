.class final Lio/intercom/a/c/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final cTK:Ljava/lang/Object;

.field final cTL:Lio/intercom/a/c/a/d;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/intercom/a/c/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/c/a/b$a;->cTK:Ljava/lang/Object;

    iput-object p2, p0, Lio/intercom/a/c/a/b$a;->cTL:Lio/intercom/a/c/a/d;

    return-void
.end method
