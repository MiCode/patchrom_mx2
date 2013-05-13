.class Lcom/android/gallery3d/app/AbstractGalleryActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$000(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    #getter for: Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;
    invoke-static {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->access$000(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/GLRootView;->setIsScreenOff(Z)V

    .line 80
    :cond_0
    return-void
.end method
