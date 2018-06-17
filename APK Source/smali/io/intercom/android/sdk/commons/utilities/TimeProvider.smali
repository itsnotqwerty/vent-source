.class public interface abstract Lio/intercom/android/sdk/commons/utilities/TimeProvider;
.super Ljava/lang/Object;


# static fields
.field public static final SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    return-void
.end method


# virtual methods
.method public abstract currentTimeMillis()J
.end method
