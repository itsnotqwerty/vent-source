.class public final Lio/intercom/a/a/a/c/d/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/d/f/d",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final cOZ:Lio/intercom/a/a/a/c/d/f/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/d/f/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/d/f/f;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/f/f;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/d/f/f;->cOZ:Lio/intercom/a/a/a/c/d/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Jr()Lio/intercom/a/a/a/c/d/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/intercom/a/a/a/c/d/f/d",
            "<TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/c/d/f/f;->cOZ:Lio/intercom/a/a/a/c/d/f/f;

    return-object v0
.end method


# virtual methods
.method public final e(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TZ;>;"
        }
    .end annotation

    return-object p1
.end method
