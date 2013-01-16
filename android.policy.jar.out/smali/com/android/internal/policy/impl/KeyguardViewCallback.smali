.class public interface abstract Lcom/android/internal/policy/impl/KeyguardViewCallback;
.super Ljava/lang/Object;
.source "KeyguardViewCallback.java"


# virtual methods
.method public abstract enableUserActivity(Z)V
.end method

.method public abstract initCheckAndStartActivityList(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract keyguardDone(Z)V
.end method

.method public abstract keyguardDoneDrawing()V
.end method

.method public abstract pokeWakelock()V
.end method

.method public abstract pokeWakelock(I)V
.end method
