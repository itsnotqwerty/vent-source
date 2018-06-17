.class public interface abstract Lcom/c/a/t$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final bOw:Lcom/c/a/t$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/c/a/t$f$1;

    invoke-direct {v0}, Lcom/c/a/t$f$1;-><init>()V

    sput-object v0, Lcom/c/a/t$f;->bOw:Lcom/c/a/t$f;

    return-void
.end method


# virtual methods
.method public abstract c(Lcom/c/a/w;)Lcom/c/a/w;
.end method
