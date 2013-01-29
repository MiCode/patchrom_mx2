.class Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/AlbumSlotRenderer$DataLoader;Lcom/android/gallery3d/ui/SlotView$Spec;Lcom/android/gallery3d/ui/AlbumSlotRenderer$LabelSpec;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/AlbumSlidingWindow;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$1;->this$0:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow$EntryUpdater;->updateEntry()V

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
