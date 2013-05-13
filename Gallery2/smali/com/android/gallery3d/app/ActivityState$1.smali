.class Lcom/android/gallery3d/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ActivityState;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$1;->this$0:Lcom/android/gallery3d/app/ActivityState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.meizu.recent.show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$1;->this$0:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->mzRecentShow()V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "com.meizu.recent.dimiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$1;->this$0:Lcom/android/gallery3d/app/ActivityState;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/ActivityState;->mzRecentDismiss()V

    goto :goto_0
.end method
