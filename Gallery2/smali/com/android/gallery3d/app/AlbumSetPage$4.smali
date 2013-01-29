.class Lcom/android/gallery3d/app/AlbumSetPage$4;
.super Landroid/content/BroadcastReceiver;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 657
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;ZZ)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$4;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v2, 0x0

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->setNoItemViewState(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1400(Lcom/android/gallery3d/app/AlbumSetPage;ZZ)V

    goto :goto_0
.end method
