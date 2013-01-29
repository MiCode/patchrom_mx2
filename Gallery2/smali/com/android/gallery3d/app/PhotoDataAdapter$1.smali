.class Lcom/android/gallery3d/app/PhotoDataAdapter$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoDataAdapter;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #getter for: Lcom/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/android/gallery3d/app/PhotoDataAdapter;)Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingFinished()V

    goto :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/android/gallery3d/app/PhotoDataAdapter;

    #calls: Lcom/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/android/gallery3d/app/PhotoDataAdapter;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
