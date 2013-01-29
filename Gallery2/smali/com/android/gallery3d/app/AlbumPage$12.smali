.class Lcom/android/gallery3d/app/AlbumPage$12;
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
    .line 1091
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$res:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1095
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/AlbumPage;->popupPasswordPadIfNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mSelectedMenuItem:Landroid/view/MenuItem;
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/AlbumPage;->access$3302(Lcom/android/gallery3d/app/AlbumPage;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1115
    :goto_0
    return v1

    .line 1099
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1100
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1105
    :pswitch_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1106
    const-string v0, "media-path"

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v4, v4, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$res:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    const v0, 0x7f0a01d8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$12;->val$res:Landroid/content/res/Resources;

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string v4, "set-title"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const-string v4, "key-state"

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1111
    const-string v0, "key-src-root-dir"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumPage;->access$1700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumPage$12;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    iget-object v5, v5, Lcom/android/gallery3d/app/ActivityState;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0

    .line 1107
    :cond_1
    const v0, 0x7f0a01d9

    goto :goto_1

    .line 1110
    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
