.class Lcom/android/gallery3d/app/AlbumSetDataLoader$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$1;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mLoadingListener:Lcom/android/gallery3d/app/LoadingListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$100(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/app/LoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/LoadingListener;->onLoadingFinished()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
