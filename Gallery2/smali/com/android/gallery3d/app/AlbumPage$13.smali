.class Lcom/android/gallery3d/app/AlbumPage$13;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$13;->val$res:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1182
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$3502(Lcom/android/gallery3d/app/AlbumPage;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1203
    :goto_0
    return v1

    .line 1186
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1187
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1192
    :pswitch_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1193
    const-string v0, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$13;->val$res:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    const v0, 0x7f0a01e7

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1195
    const-string v4, "set-title"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v4, "key-state"

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const-string v0, "key-src-root-dir"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$2000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v0, "key-copy-move-num"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v2, v2, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/gallery3d/ui/SelectionManager;)V

    .line 1200
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$13;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumPage;->access$2600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->hide()V

    goto :goto_0

    .line 1194
    :cond_1
    const v0, 0x7f0a01e8

    goto :goto_1

    .line 1196
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 1187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
