.class Lcom/android/gallery3d/app/PhotoPage$10;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showDLNADlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 945
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 947
    .local v1, current:Lcom/android/gallery3d/data/MediaItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDLNADeviceAdapter:Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/app/PhotoPage$SingleChoiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/dlna/DlnaDevice;

    .line 948
    .local v2, dev:Landroid/media/dlna/DlnaDevice;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/GalleryAppImpl;->getRemoteDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, curRemoteDevId:Ljava/lang/String;
    iget-object v4, v2, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 951
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/dlna/DlnaClient;->stop(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 953
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaLocalDevice:Landroid/media/dlna/DlnaDevice;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/dlna/DlnaDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 954
    const/4 v0, 0x0

    .line 958
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/app/GalleryAppImpl;->setRemoteDeviceId(Ljava/lang/String;)V

    .line 959
    if-eqz v0, :cond_3

    .line 960
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/dlna/DlnaClient;->selectPlayer(Ljava/lang/String;)Z

    .line 961
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$4000(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f02006c

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 967
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$4100(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    instance-of v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 968
    check-cast v3, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 969
    .local v3, item:Lcom/android/gallery3d/data/LocalMediaItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iget-object v5, v3, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/PhotoPage;->access$4200(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V

    .line 971
    .end local v3           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_1
    return-void

    .line 956
    :cond_2
    iget-object v0, v2, Landroid/media/dlna/DlnaDevice;->deviceId:Ljava/lang/String;

    goto :goto_0

    .line 963
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage$10;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/android/gallery3d/app/PhotoPage;->access$4000(Lcom/android/gallery3d/app/PhotoPage;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f02006b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method
