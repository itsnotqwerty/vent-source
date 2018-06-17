.class public interface abstract Lio/intercom/a/c/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final cTO:Lio/intercom/a/c/a/i;

.field public static final cTP:Lio/intercom/a/c/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/c/a/i$1;

    invoke-direct {v0}, Lio/intercom/a/c/a/i$1;-><init>()V

    sput-object v0, Lio/intercom/a/c/a/i;->cTO:Lio/intercom/a/c/a/i;

    new-instance v0, Lio/intercom/a/c/a/i$2;

    invoke-direct {v0}, Lio/intercom/a/c/a/i$2;-><init>()V

    sput-object v0, Lio/intercom/a/c/a/i;->cTP:Lio/intercom/a/c/a/i;

    return-void
.end method


# virtual methods
.method public abstract a(Lio/intercom/a/c/a/b;)V
.end method
