.class Lcom/android/gallery3d/app/AlbumPage$9$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/view/ActionMode$OnActionItemDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage$9;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/AlbumPage$9;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage$9;)V
    .locals 0
    .parameter

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;Landroid/view/MenuItem;)V
    .locals 2
    .parameter "event"
    .parameter "menuItem"

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 893
    :goto_0
    return-void

    .line 873
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 874
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d01b0

    if-ne v0, v1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->setDragingState(I)V

    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->setDragingState(I)V

    goto :goto_0

    .line 881
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage;->mDelayUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDragBuilder:Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$3100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumPage$DragPhotoBuilder;->setDragingState(I)V

    goto :goto_0

    .line 886
    :sswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #calls: Lcom/android/gallery3d/app/AlbumPage;->onDragEnd()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$1200(Lcom/android/gallery3d/app/AlbumPage;)V

    goto :goto_0

    .line 889
    :sswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v1, v1, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->getDragItemPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setDragItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 890
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$9$1;->this$1:Lcom/android/gallery3d/app/AlbumPage$9;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumPage$9;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 871
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method
