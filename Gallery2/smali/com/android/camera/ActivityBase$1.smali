.class Lcom/android/camera/ActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    iget-boolean v0, v0, Lcom/android/camera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getLastThumbnailUncached()V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ActivityBase$1;->this$0:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ActivityBase;->mUpdateThumbnailDelayed:Z
    invoke-static {v0, v1}, Lcom/android/camera/ActivityBase;->access$002(Lcom/android/camera/ActivityBase;Z)Z

    goto :goto_0
.end method
